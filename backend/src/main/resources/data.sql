INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Tarefa avaliada', TIMESTAMP WITH TIME ZONE '2022-10-22T15:30:30Z', false, ' ', 1);


INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');


INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp Spring', 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 'https://inpaonline.com.br/wp-content/uploads/2019/10/online-course-8-899132.png');
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-05-23T20:50:05Z', TIMESTAMP WITH TIME ZONE '2021-05-23T20:50:05Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-23T20:50:05Z', TIMESTAMP WITH TIME ZONE '2021-12-23T20:50:05Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Crud', 'Fazendo um crud com spring', 1, 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas', 2, 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas da turma', 3, 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Introducao a TDD', 1, 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Testes unitarios', 2, 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Teste de integracao', 3, 'https://prod-discovery.edx-cdn.org/media/course/image/156313d6-f892-4b08-9cee-43ea582f4dfb-7b98c686abcc.small.png', 1, 2);

INSERT INTO tb_enrollment (enroll_Moment, refund_Moment, available, only_Update, user_id, offer_id) VALUES (TIMESTAMP WITH TIME ZONE '2021-05-23T20:50:05Z', null, true, false, 1, 1);
INSERT INTO tb_enrollment (enroll_Moment, refund_Moment, available, only_Update, user_id, offer_id) VALUES (TIMESTAMP WITH TIME ZONE '2021-05-23T20:50:05Z', null, true, false, 2, 1);


INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1', 1, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('Material de apoio', 'https://www.youtube.com/watch?v=FnaoovTg-sc&ab_channel=TodayonTwitch', 1);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2', 2, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES (' ', 'https://www.youtube.com/watch?v=FnaoovTg-sc&ab_channel=TodayonTwitch', 2);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3', 3, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES (' ', 'https://www.youtube.com/watch?v=FnaoovTg-sc&ab_channel=TodayonTwitch', 3);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa capitulo 1', 4, 1);
INSERT INTO tb_task (description, question_Count, approval_Count, weight, due_Date, id) VALUES ('Desafio TDD', 15, 8, 10.0, TIMESTAMP WITH TIME ZONE '2022-05-23T16:30:30Z', 4);

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_deliver (uri, moment, status, feed_Back, lesson_id, user_id, offer_id) VALUES ('https://github.com/gabpesouza', TIMESTAMP WITH TIME ZONE '2022-05-23T23:30:30Z', 1, 'Ficou muito bom, parabéns', 4, 1, 1);




