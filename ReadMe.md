# Java Blockchain Application using Threading

#### This project is a blockchain-based application developed as part of a university exercise. It simulates a simple blockchain system where blocks represent products. The program allows to interact with the blockchain via RESTful endpoints to add, search, and retrieve blocks and get statistics.

---

## Features

#### The program demonstrates the core concepts of blockchain technology, including:

- Creating and adding blocks to the blockchain.
- Validating the integrity of the blockchain.
- Searching and retrieving blocks based on specific criteria.
- Generating statistics about blocks.

---

## Prerequisites

#### Before setting up the application, ensure the following tools are installed on your system:

- [Docker](https://www.docker.com/products/docker-desktop)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Java 17](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html) or later (if not using Docker for the app).

---

## Setup

### Make sure you are not running anythin in port 5433!
### Docker must run.

### Run the project

1. Ensure you are in the project directory.
2. Use Docker Compose to set up the PostgreSQL database and project:

```
docker-compose up -d
```

---

#### This will initialize the PostgreSQL database and make it available for the application, also will generate an auto runnable container where spring boot is started.

## Endpoints

### 1. **Get All Blocks**
- **Endpoint**: `GET /products/all`
- **Description**: Retrieves all blocks in the blockchain.
- **Response**: A list of `Block` objects representing the entire blockchain.

### 2. **Add a Block**
- **Endpoint**: `POST /products/add`
- **Description**: Adds a new block to the blockchain.
- **Parameters**:
    - `productCode` (String): Unique identifier for the product.
    - `title` (String): Title of the product.
    - `price` (double): Price of the product.
    - `description` (String): Description of the product.
    - `category` (String): Category of the product.
- **Response**: A success message indicating the block was added.

### 3. **Search Blocks**
- **Endpoint**: `GET /products/search`
- **Description**: Searches for blocks based on a specific attribute and value.
- **Parameters**:
    - `select` (String): Attribute to search by (`productCode`, `title`, `price`, `category`, or `description`).
    - `value` (String): Value to search for.
- **Response**: A list of `Block` objects matching the search criteria.

### 4. **Add Multiple Blocks**
- **Endpoint**: `POST /products/add_many`
- **Description**: Adds multiple blocks to the blockchain in a single request.
- **Parameters**:
    - `quantity` (int): Number of blocks to add.
    - `productCodes` (List<String>): List of product codes.
    - `titles` (List<String>): List of product titles.
    - `prices` (List<Double>): List of product prices.
    - `descriptions` (List<String>): List of product descriptions.
    - `categories` (List<String>): List of product categories.
- **Response**: A list of messages indicating the status of each block addition.

### 5. **Get Statistics**
- **Endpoint**: `GET /products/statistics`
- **Description**: Retrieves statistics for blocks with a specific title.
- **Parameters**:
    - `title` (String): Title of the product to generate statistics for.
- **Response**: A list of statistics in the format `Title: [title], Price: [price], Category: [category], Timestamp: [timestamp]`.

---

## Postman Collection

#### A JSON file containing pre-configured endpoints for Postman is included in the folder. You can import this file into Postman to quickly test the API.