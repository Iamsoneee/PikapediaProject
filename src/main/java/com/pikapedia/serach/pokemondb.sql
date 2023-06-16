create table account(
    a_name varchar2(20 char) not null,
    a_id varchar2(20 char) primary key,
    a_pw varchar2(20 char) not null,
    a_email varchar2(50 char) not null
);
create sequence account_seq;
delete from ACCOUNT;
insert into account values ('jp', 'jp', '1004', 'does0539@naver.com');
insert into account values ('jp2', 'jp2', '1004', 'does0539@gmail.com');

select * from account;

create table pokemon(
    p_no number(5) primary key,
    p_name varchar2(20 char) not null,
    p_height number(3,1) not null,
    p_weight number(4,1) not null,
    p_type1 varchar2(20 char) not null,
    p_type2 varchar2(20 char),
    p_des varchar2(200 char) not null,
    p_front_default_img varchar2(200 char) not null,
    p_back_default_img varchar2(200 char) not null,
    p_front_shiny_img varchar2(200 char) not null,
    p_back_shiny_img varchar2(200 char) not null
);

drop table pokemon;
insert into pokemon values(1, '�̻��ؾ�', 0.7, 6.9, 'Ǯ', '��', '�¾�� ������ � �Ĺ��� ������ ������ ���ݾ� ũ�� �ڶ���.','https://i.namu.wiki/i/FqhnQXdyFsN_Yai7kOpzIjI-i5UQttwJhqp5BpppXSkmBOH-fPspqQwxFlgLqtFUZ49-StdXNYb6yQZNHzjgwHFjAuOxirNHZOXvlzA_WfDqzZ4PxcIvZKpnSE9ba1hhldA7Ld-OuQZehDvYxQAW6Q.webp','1','2','3');

insert into pokemon values(1, '�̻��ؾ�', 0.7, 6.9, 'Ǯ', '��', '�¾�� ������ � �Ĺ��� ������ ������ ���ݾ� ũ�� �ڶ���.','https://i.namu.wiki/i/FqhnQXdyFsN_Yai7kOpzIjI-i5UQttwJhqp5BpppXSkmBOH-fPspqQwxFlgLqtFUZ49-StdXNYb6yQZNHzjgwHFjAuOxirNHZOXvlzA_WfDqzZ4PxcIvZKpnSE9ba1hhldA7Ld-OuQZehDvYxQAW6Q.webp');
insert into pokemon values(2, '�̻���Ǯ', 1.0, 13.0, 'Ǯ', '��', '�ɺ������� � �پ� ������ ����� ����ذ��� Ŀ�ٶ� ���� �ɴٰ� �Ѵ�.', 'https://i.namu.wiki/i/dBnPL94XImRqfravijBzuNAfn12eq6kPnstIEGMPUlwXZ11rlr1ZZ85AfVUHwTEkz4rBPYuxn6Pbv9XG_7yQotlsb1G4bG-k3PKELmu5oucPhVURJSb6rgePmwJ9D3CyjYMorfRz54h4MgV_ndDcWA.webp');
insert into pokemon values(3, '�̻��ز�', 2.0, 100.0, 'Ǯ', '��', '�ɿ��� ȲȦ�� ��Ⱑ ���� ���� �ο�� ���� ����� �޷��ش�.', 'https://i.namu.wiki/i/ZaPVSV61rNAvSJy5b_JxMoX4d6tyR-TxNplpUp2VY57U1rkZ1IKEFDQdbsgffsOQ4S_sdq3DvZHPeEzxzKEUgt82RAUwGWRODoCqwdQRw-Z67-X7VnYI1V4A4bLVF6lZ-qP6z5tt-eyWujpJsORQpQ.webp');
insert into pokemon values(4, '���̸�', 0.6, 8.5, '�Ҳ�', null, '�¾ ������ ������ �Ҳ��� Ÿ������ �ִ�. �Ҳ��� ������ �� ������ ���ϰ� ����.', 'https://i.namu.wiki/i/N7ifvwjE1AHgiTItsnyrKHmQR8aX7xh4CzH6JQrY4JOnXfSDF3rnAWbqOKJkWJUVO4qnqYNknf70R_yAKAebpa7dbdDpeIOgboA2n4cMAwHIzUz-f0ORC2TCrLS0mlw-uTurXoJ55-pzVxgnZ6EP4Q.webp');
insert into pokemon values(5, '���ڵ�', 1.1, 19.0, '�Ҳ�', null, '������ �ֵѷ� ��븦 ����Ʈ���� ��ī�ο� �������� ���Ⱕ�� ���������.', 'https://i.namu.wiki/i/ogE0059Dk6jmlWcnTgXBpbKrBSQejwst357zFaog8Q4a6qiin3qma5drQjAcUOEgAFftil5JSUvVO_kBlA3g8rJ3RMQdyGhIDnVh86G4OyiNRW75js7Z_vx5Pt9rvto4OCAwrM6rZ5Cbej4LeXtHkQ.webp');
insert into pokemon values(6, '���ڸ�', 1.7, 90.5, '�Ҳ�', '����', '���� 1400m���� ������ ����� �� �� �ִ�. ���� �Ҳ��� ���մ´�.', 'https://i.namu.wiki/i/aXNUpFZOOGKH6jjZwh83EwXjHEkvhoaxrINHLMqkRGxc3zhKRK66rmDdPgBQQ39PblL9X9fcQ4eSSEf-4v-3CteivZaYh7kAH9tm1N0y7pxXrnjMRluF9G3LZNgX28lsbXJyHX3FUfzvbF-iII97pg.webp');
insert into pokemon values(7, '���α�', 0.5, 9.0, '��', null, '��ٶ� ���� ��� �ӿ� ���� ���� �⼼ ���� �������� �߻��Ѵ�.', 'https://i.namu.wiki/i/0iyU3DWoEB4cOmqMulTbEbwFGvjNWEdZrPRscph1453-rvkUE0DZYYpsEBh3C5sR_WM8fQ5gPTYlUqvUVxgwithr1G1mVNMK5VCsTX_tZ8EwgRGRdmsAXXYC5WZiDlSF94ce57wyd4F4z2Ea677IcA.webp');
insert into pokemon values(8, '��Ϻα�', 1.0, 22.5, '��', null, '�ֿϵ����� �αⰡ ����. ���� �з� ���� ������ ���(����)�� ��¡�̴�.', 'https://i.namu.wiki/i/k-uZPjEdCs7JCO28VenNl7koxXWadzxkPrh7dcYudxVLPR6aTZG62Wsszo-UEkzrvgvOfbWRVc98y5wvuDdo1s8YL11i02KNmgn6BOLVkNpxtYa34VVtCzSRBg8RLkpEqyOq124WGhRUVmP6wzG3Vw.webp');
insert into pokemon values(9, '�źϿ�', 1.6, 85.5, '��', null, '���ſ� ������ ��븦 ���ļ� ������Ų��. ���⿡ ó�ϸ� ����� ���´�.', 'https://i.namu.wiki/i/hM8dY4lS-feTJoRoKLewu9s_JLZOVWv01G0FiWZZUGA8cH1ONVJyW3BhsW-Wj9GD7ARfIEgSZckI35xdpmsc3GAOiFrsu7310uZrUyJsCEL92bQ-KIkR_n_VZYL-_zozLWND-3Lk3oQSyICULYzNfw.webp');
insert into pokemon values(25, '��ī��', 0.4, 6.0, '����', null, '���� ���ʿ� ���� ���� �ָӴϰ� �ִ�. ���� ��Ȳ�� �� �����Ѵ�.', 'https://i.namu.wiki/i/cuo1uavekbZ3nZCfwiXp1YoEPHZFDT2ir9BH8uerkRuJRxQ0seHguJI_yXI7kKXK9kz3Sr7U7Cm-7kbWG2_xTwbYmIaUsgapa44_BbwuAsKi9GtJYyvCwQPXtPlR3safKkduW9bu6ciUX2evp66CBQ.webp');
insert into pokemon values(19, '����', 0.3, 1.8, '�븻', '����', '�ο��� �������� �ʴ´�. Ǯ�� �ȿ� ���� ���� ���� ���� ��´�.' , 'https://i.namu.wiki/i/J_5glNxV7EKaW0UWiUn70Bfdppk7oaLH6rTEJQRNd372c5r_kRElBQSvxp-f_pMGErXOfNGbBV9W6nBTm6EGfxOtmKvYLATVeNnQrU8cYpYr9idvVrTQ3xysCVOFLApUaWkrYfCOj6AmvaBO6yRqdQ.webp');
insert into pokemon values(151, '��', 0.4, 4.0, '������', null, '���Ƹ޸�ī�� �����ϰ� �ִ� ����Ǿ����� ���ϸ�. ������ ���� � ���̶� �����Ѵ�.', 'https://i.namu.wiki/i/YIM_BuJPXkC34aM_APcZ6kWTtg2gxRZE9ups91zkN0O1gw_jRR3K3Bykoyb6v4GNFqZICA6TUfjxR_BftcMdBFlHi7hAHlIa3f-wFqJ7ENYiShEVHGd43EGADKh1wjCSxCuW7PEXIrXYKsXK5R_pzg.webp' );


delete from pokemon where p_no = 1;
select * from pokemon;
select * from pokemon where p_name like '%"�̻�"%'; 
create table bookmark(
    b_no number(5) not null,
    b_id varchar2(20 char) not null
);

select * from bookmark;