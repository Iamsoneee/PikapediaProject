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
insert into pokemon values(1, '이상해씨', 0.7, 6.9, '풀', '독', '태어났을 때부터 등에 식물의 씨앗이 있으며 조금씩 크게 자란다.','https://i.namu.wiki/i/FqhnQXdyFsN_Yai7kOpzIjI-i5UQttwJhqp5BpppXSkmBOH-fPspqQwxFlgLqtFUZ49-StdXNYb6yQZNHzjgwHFjAuOxirNHZOXvlzA_WfDqzZ4PxcIvZKpnSE9ba1hhldA7Ld-OuQZehDvYxQAW6Q.webp','1','2','3');

insert into pokemon values(1, '이상해씨', 0.7, 6.9, '풀', '독', '태어났을 때부터 등에 식물의 씨앗이 있으며 조금씩 크게 자란다.','https://i.namu.wiki/i/FqhnQXdyFsN_Yai7kOpzIjI-i5UQttwJhqp5BpppXSkmBOH-fPspqQwxFlgLqtFUZ49-StdXNYb6yQZNHzjgwHFjAuOxirNHZOXvlzA_WfDqzZ4PxcIvZKpnSE9ba1hhldA7Ld-OuQZehDvYxQAW6Q.webp');
insert into pokemon values(2, '이상해풀', 1.0, 13.0, '풀', '독', '꽃봉오리가 등에 붙어 있으며 양분을 흡수해가면 커다란 꽃이 핀다고 한다.', 'https://i.namu.wiki/i/dBnPL94XImRqfravijBzuNAfn12eq6kPnstIEGMPUlwXZ11rlr1ZZ85AfVUHwTEkz4rBPYuxn6Pbv9XG_7yQotlsb1G4bG-k3PKELmu5oucPhVURJSb6rgePmwJ9D3CyjYMorfRz54h4MgV_ndDcWA.webp');
insert into pokemon values(3, '이상해꽃', 2.0, 100.0, '풀', '독', '꽃에서 황홀한 향기가 퍼져 나와 싸우는 자의 기분을 달래준다.', 'https://i.namu.wiki/i/ZaPVSV61rNAvSJy5b_JxMoX4d6tyR-TxNplpUp2VY57U1rkZ1IKEFDQdbsgffsOQ4S_sdq3DvZHPeEzxzKEUgt82RAUwGWRODoCqwdQRw-Z67-X7VnYI1V4A4bLVF6lZ-qP6z5tt-eyWujpJsORQpQ.webp');
insert into pokemon values(4, '파이리', 0.6, 8.5, '불꽃', null, '태어날 때부터 꼬리의 불꽃이 타오르고 있다. 불꽃이 꺼지면 그 생명이 다하고 만다.', 'https://i.namu.wiki/i/N7ifvwjE1AHgiTItsnyrKHmQR8aX7xh4CzH6JQrY4JOnXfSDF3rnAWbqOKJkWJUVO4qnqYNknf70R_yAKAebpa7dbdDpeIOgboA2n4cMAwHIzUz-f0ORC2TCrLS0mlw-uTurXoJ55-pzVxgnZ6EP4Q.webp');
insert into pokemon values(5, '리자드', 1.1, 19.0, '불꽃', null, '꼬리를 휘둘러 상대를 쓰러트리고 날카로운 발톱으로 갈기갈기 찢어버린다.', 'https://i.namu.wiki/i/ogE0059Dk6jmlWcnTgXBpbKrBSQejwst357zFaog8Q4a6qiin3qma5drQjAcUOEgAFftil5JSUvVO_kBlA3g8rJ3RMQdyGhIDnVh86G4OyiNRW75js7Z_vx5Pt9rvto4OCAwrM6rZ5Cbej4LeXtHkQ.webp');
insert into pokemon values(6, '리자몽', 1.7, 90.5, '불꽃', '비행', '지상 1400m까지 날개를 사용해 날 수 있다. 고열의 불꽃을 내뿜는다.', 'https://i.namu.wiki/i/aXNUpFZOOGKH6jjZwh83EwXjHEkvhoaxrINHLMqkRGxc3zhKRK66rmDdPgBQQ39PblL9X9fcQ4eSSEf-4v-3CteivZaYh7kAH9tm1N0y7pxXrnjMRluF9G3LZNgX28lsbXJyHX3FUfzvbF-iII97pg.webp');
insert into pokemon values(7, '꼬부기', 0.5, 9.0, '물', null, '기다란 목을 등껍질 속에 감춘 다음 기세 좋게 물대포를 발사한다.', 'https://i.namu.wiki/i/0iyU3DWoEB4cOmqMulTbEbwFGvjNWEdZrPRscph1453-rvkUE0DZYYpsEBh3C5sR_WM8fQ5gPTYlUqvUVxgwithr1G1mVNMK5VCsTX_tZ8EwgRGRdmsAXXYC5WZiDlSF94ce57wyd4F4z2Ea677IcA.webp');
insert into pokemon values(8, '어니부기', 1.0, 22.5, '물', null, '애완동물로 인기가 많다. 또한 털로 덮인 꼬리는 장수(長壽)의 상징이다.', 'https://i.namu.wiki/i/k-uZPjEdCs7JCO28VenNl7koxXWadzxkPrh7dcYudxVLPR6aTZG62Wsszo-UEkzrvgvOfbWRVc98y5wvuDdo1s8YL11i02KNmgn6BOLVkNpxtYa34VVtCzSRBg8RLkpEqyOq124WGhRUVmP6wzG3Vw.webp');
insert into pokemon values(9, '거북왕', 1.6, 85.5, '물', null, '무거운 몸으로 상대를 덮쳐서 기절시킨다. 위기에 처하면 등껍질에 숨는다.', 'https://i.namu.wiki/i/hM8dY4lS-feTJoRoKLewu9s_JLZOVWv01G0FiWZZUGA8cH1ONVJyW3BhsW-Wj9GD7ARfIEgSZckI35xdpmsc3GAOiFrsu7310uZrUyJsCEL92bQ-KIkR_n_VZYL-_zozLWND-3Lk3oQSyICULYzNfw.webp');
insert into pokemon values(25, '피카츄', 0.4, 6.0, '전기', null, '뺨의 양쪽에 작은 전기 주머니가 있다. 위기 상황일 때 방전한다.', 'https://i.namu.wiki/i/cuo1uavekbZ3nZCfwiXp1YoEPHZFDT2ir9BH8uerkRuJRxQ0seHguJI_yXI7kKXK9kz3Sr7U7Cm-7kbWG2_xTwbYmIaUsgapa44_BbwuAsKi9GtJYyvCwQPXtPlR3safKkduW9bu6ciUX2evp66CBQ.webp');
insert into pokemon values(19, '구구', 0.3, 1.8, '노말', '비행', '싸움은 좋아하지 않는다. 풀숲 안에 숨어 작은 벌레 등을 잡는다.' , 'https://i.namu.wiki/i/J_5glNxV7EKaW0UWiUn70Bfdppk7oaLH6rTEJQRNd372c5r_kRElBQSvxp-f_pMGErXOfNGbBV9W6nBTm6EGfxOtmKvYLATVeNnQrU8cYpYr9idvVrTQ3xysCVOFLApUaWkrYfCOj6AmvaBO6yRqdQ.webp');
insert into pokemon values(151, '뮤', 0.4, 4.0, '에스퍼', null, '남아메리카에 서식하고 있는 전멸되었었을 포켓몬. 지능이 높아 어떤 것이라도 습득한다.', 'https://i.namu.wiki/i/YIM_BuJPXkC34aM_APcZ6kWTtg2gxRZE9ups91zkN0O1gw_jRR3K3Bykoyb6v4GNFqZICA6TUfjxR_BftcMdBFlHi7hAHlIa3f-wFqJ7ENYiShEVHGd43EGADKh1wjCSxCuW7PEXIrXYKsXK5R_pzg.webp' );


delete from pokemon where p_no = 1;
select * from pokemon;
select * from pokemon where p_name like '%"이상"%'; 
create table bookmark(
    b_no number(5) not null,
    b_id varchar2(20 char) not null
);

select * from bookmark;