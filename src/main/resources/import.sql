INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');


INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course(name, img_uri, img_gray_uri) VALUES ('BootCamp Java', 'https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/java.png', 'https://freesvg.org/img/1643312660java.png');
INSERT INTO tb_course(name, img_uri, img_gray_uri) VALUES ('Spring Boot Expert','https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/spring.png','https://freesvg.org/img/spring-framework-logo.png');
INSERT INTO tb_course(name, img_uri, img_gray_uri) VALUES ('Java OO e Clean Code','https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/code.png','https://freesvg.org/img/code-icon.png');
INSERT INTO tb_course(name, img_uri, img_gray_uri) VALUES ('Banco de Dados com JPA','https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/database.png','https://freesvg.org/img/database.png');
INSERT INTO tb_course(name, img_uri, img_gray_uri) VALUES ('APIs REST com Spring','https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/api.png','https://freesvg.org/img/api-icon.png');

INSERT INTO tb_offer(edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2025-01-14T10:00:00Z', TIMESTAMP WITH TIME ZONE '2027-07-14T10:00:00Z', 1);
INSERT INTO tb_offer(edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2025-12-14T10:00:00Z', TIMESTAMP WITH TIME ZONE '2027-12-14T10:00:00Z', 1);