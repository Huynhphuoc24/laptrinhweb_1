-- Lấy danh sách người dùng theo thứ tự tên từ A -> Z
SELECT * FROM users ORDER BY user_name COLLATE utf8mb4_unicode_ci ASC;

-- Lấy ra 07 người dùng theo thứ tự tên từ A -> Z
SELECT * FROM users ORDER BY user_name COLLATE utf8mb4_unicode_ci ASC LIMIT 7;

-- Lấy danh sách người dùng có chữ 'a' trong tên, sắp xếp A -> Z
SELECT * FROM users WHERE user_name COLLATE utf8mb4_unicode_ci LIKE '%a%' ORDER BY user_name ASC;

-- Lấy danh sách người dùng có tên bắt đầu bằng chữ 'm'
SELECT * FROM users WHERE user_name COLLATE utf8mb4_unicode_ci LIKE 'm%';

-- Lấy danh sách người dùng có tên kết thúc bằng chữ 'i'
SELECT * FROM users WHERE user_name COLLATE utf8mb4_unicode_ci LIKE '%i';

-- Lấy danh sách người dùng có email là huynhphuoc2842@mail.com
SELECT * FROM users WHERE user_email = 'huynhphuoc2842@mail.com';

-- Lấy danh sách người dùng có email huynhphuoc2842@mail.com và tên bắt đầu bằng 'm'
SELECT * FROM users WHERE user_email = 'huynhphuoc2842@mail.com' AND user_name COLLATE utf8mb4_unicode_ci LIKE 'm%';

-- Lấy danh sách người dùng có email huynhphuoc2842@mail.com, tên có 'i' và tên dài hơn 5 ký tự
SELECT * FROM users WHERE user_email = 'huynhphuoc2842@mail.com' AND user_name COLLATE utf8mb4_unicode_ci LIKE '%i%' AND CHAR_LENGTH(user_name) > 5;

-- Lấy danh sách người dùng có chữ 'a', chiều dài tên từ 5-9, email huynhphuoc2842@mail.com và tên email chứa 'i'
SELECT * FROM users 
WHERE user_name COLLATE utf8mb4_unicode_ci LIKE '%a%' 
AND CHAR_LENGTH(user_name) BETWEEN 5 AND 9 
AND user_email = 'huynhphuoc2842@mail.com' 
AND SUBSTRING_INDEX(user_email, '@', 1) LIKE '%i%';

-- Lấy danh sách theo điều kiện kết hợp
SELECT * FROM users 
WHERE (user_name COLLATE utf8mb4_unicode_ci LIKE '%a%' AND CHAR_LENGTH(user_name) BETWEEN 5 AND 9)
   OR (user_name COLLATE utf8mb4_unicode_ci LIKE '%i%' AND CHAR_LENGTH(user_name) < 9)
   OR (user_email = 'huynhphuoc2842@mail.com' AND SUBSTRING_INDEX(user_email, '@', 1) LIKE '%i%');
