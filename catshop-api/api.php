<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type");

include 'db.php';

$method = $_SERVER['REQUEST_METHOD'];
$request = explode('/', trim($_SERVER['PATH_INFO'] ?? '', '/'));

$table = "products";

// GET all products or single product
if ($method == 'GET') {
    if (isset($request[0]) && is_numeric($request[0])) {
        // GET single product
        $id = intval($request[0]);
        $sql = "SELECT * FROM $table WHERE product_id=$id";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            echo json_encode($result->fetch_assoc());
        } else {
            echo json_encode(["error" => "Product not found"]);
        }
    } else {
        // GET all products
        $sql = "SELECT * FROM $table";
        $result = $conn->query($sql);
        $products = [];
        while ($row = $result->fetch_assoc()) {
            $products[] = $row;
        }
        echo json_encode($products);
    }
}

// POST new product
if ($method == 'POST') {
    $data = json_decode(file_get_contents("php://input"), true);
    $name = $conn->real_escape_string($data['product_name']);
    $category = $conn->real_escape_string($data['category']);
    $price = floatval($data['price']);
    $stock = intval($data['stock']);
    $description = $conn->real_escape_string($data['description']);

    $sql = "INSERT INTO $table (product_name, category, price, stock, description) 
            VALUES ('$name','$category',$price,$stock,'$description')";
    if ($conn->query($sql)) {
        echo json_encode(["message" => "Product added", "product_id" => $conn->insert_id]);
    } else {
        echo json_encode(["error" => $conn->error]);
    }
}

// PUT update product
if ($method == 'PUT') {
    if (!isset($request[0])) {
        echo json_encode(["error" => "Product ID required"]);
        exit;
    }
    $id = intval($request[0]);
    $data = json_decode(file_get_contents("php://input"), true);

    $fields = [];
    foreach ($data as $key => $value) {
        if (in_array($key, ['product_name','category','price','stock','description'])) {
            $val = is_numeric($value) ? $value : "'".$conn->real_escape_string($value)."'";
            $fields[] = "$key=$val";
        }
    }
    $sql = "UPDATE $table SET ".implode(",", $fields)." WHERE product_id=$id";
    if ($conn->query($sql)) {
        echo json_encode(["message" => "Product updated"]);
    } else {
        echo json_encode(["error" => $conn->error]);
    }
}

// DELETE product
if ($method == 'DELETE') {
    if (!isset($request[0])) {
        echo json_encode(["error" => "Product ID required"]);
        exit;
    }
    $id = intval($request[0]);
    $sql = "DELETE FROM $table WHERE product_id=$id";
    if ($conn->query($sql)) {
        echo json_encode(["message" => "Product deleted"]);
    } else {
        echo json_encode(["error" => $conn->error]);
    }
}
?>
