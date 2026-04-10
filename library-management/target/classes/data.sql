-- Xóa dữ liệu cũ trước khi nạp
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE member;
TRUNCATE TABLE users;
TRUNCATE TABLE document;
SET FOREIGN_KEY_CHECKS = 1;

-- nạp người dùng (Bảng users - cha)
INSERT INTO users (id, username, full_name, email)
VALUES (1, 'admin', 'Thủ thư Admin', 'admin@library.com'),
       (2, 'member1', 'Nguyễn Văn A', 'vana@gmail.com');

-- nạp độc giả (Bảng member - con)
INSERT INTO member (id, max_borrow_limit, current_borrow_count)
VALUES (2, 5, 0);

-- nạp tài liệu (Sách và Tạp chí)
INSERT INTO document (id, title, author, category, publication_year, available_copies, doc_type)
VALUES (1, 'Java OOP Cơ Bản', 'James Gosling', 'Công nghệ', 2023, 10, 'Book'),
       (2, 'Tạp chí Khoa học', 'Viện Khoa học VN', 'Khoa học', 2025, 15, 'Magazine');