INSERT 
  INTO TBL_MEMBER_DEAD 
VALUES 
(
  SEQ_MEMBER_DEAD_NO.NEXTVAL, '010', '3587', '3376'
, 'knsol1992', 'naver.com', '08327', '서울 구로구 가마산로 77', '107동 1202호'
, 'testid01', '$2a$10$JNB9P5K2SMx2VankKWIiCuyFLYOfFBxkmYLJ1BxqKZwSps/l6tBTG'
, TO_DATE(19920819,'RRRRMMDD'), '나큰솔', 'M'
);

INSERT 
  INTO TBL_MEMBER_DEAD 
VALUES 
(
  SEQ_MEMBER_DEAD_NO.NEXTVAL, '010', '1234', '5678'
, 'khjhj4884', 'gmail.com', '06153', '서울 강남구 봉은사로 404', '비싼아파트'
, 'testid02', '$2a$10$1y6qyiDnKUBfSVxeHtd6PONNdAiIItl/z/SD/Edw/fP7cA098ih9W'
, TO_DATE(19930702, 'RRRRMMDD'), '김효효', 'W'
);

INSERT 
  INTO TBL_MEMBER_DEAD 
VALUES 
(
  SEQ_MEMBER_DEAD_NO.NEXTVAL, '010', '9876', '5432'
, 'knsol1992', 'naver.com', '13480', '경기 성남시 분당구 대왕판교로 477', '카카오'
, 'testid03', '$2a$10$zQCBurT5hli7gNu6DY6wfeK.GXvyvTu/5yhZlpf3EhNTbeNleBsmW'
, TO_DATE(19920819,'RRRRMMDD'), '동동', 'W'
);

-- 아이디 찾기 질문 INSERT
INSERT 
  INTO TBL_MEMBER_QUESTION
VALUES
(
  1, '출신 고등학교'
);

INSERT 
  INTO TBL_MEMBER_QUESTION
VALUES
(
  2, '가장 친한 친구 이름'
);

INSERT 
  INTO TBL_MEMBER_QUESTION
VALUES
(
  3, '가장 존경하는 인물'
);

INSERT 
  INTO TBL_MEMBER_QUESTION
VALUES
(
  4, '별명'
);

INSERT 
  INTO TBL_MEMBER_QUESTION
VALUES
(
  5, '고향'
);

INSERT 
  INTO TBL_MEMBER_QUESTION
VALUES
(
  6, '좋아하는 색'
);

-- 활동 회원 INSERT
INSERT
  INTO TBL_MEMBER_ALIVE
VALUES  
(
  'testid01', 6, 010, 3587, 3376
, 'knsol1992', 'naver.com', '08327', '서울 구로구 가마산로 77' 
, '107동 1202호', '$2a$10$JNB9P5K2SMx2VankKWIiCuyFLYOfFBxkmYLJ1BxqKZwSps/l6tBTG'
, '나큰솔', TO_DATE(19920819, 'RRRRMMDD'), '광대 샬리에르', 'M'
, TO_DATE(20220613, 'RRRRMMDD'), 'A', NULL, TO_DATE(20220613, 'RRRRMMDD')
);

INSERT
  INTO TBL_MEMBER_ALIVE
VALUES  
(
  'testid02', 1, 010, 1234, 5678
, 'khjhj4884', 'gmail.com', '06153', '서울 강남구 봉은사로 404' 
, '비싼아파트', '$2a$10$1y6qyiDnKUBfSVxeHtd6PONNdAiIItl/z/SD/Edw/fP7cA098ih9W'
, '김효효', TO_DATE(19930702, 'RRRRMMDD'), '하이미디어', 'W'
, TO_DATE(20220613, 'RRRRMMDD'), 'A', NULL, TO_DATE(20220613, 'RRRRMMDD')
);

INSERT
  INTO TBL_MEMBER_ALIVE
VALUES  
(
  'testid03', 3, 010, 9876, 5432
, 'knsol1992', 'gmail.com', '13480', '경기 성남시 분당구 대왕판교로 477' 
, '카카오', '$2a$10$zQCBurT5hli7gNu6DY6wfeK.GXvyvTu/5yhZlpf3EhNTbeNleBsmW'
, '동동', TO_DATE(19920819, 'RRRRMMDD'), '김용승강사님', 'M'
, TO_DATE(20220613, 'RRRRMMDD'), 'A', NULL, TO_DATE(20220613, 'RRRRMMDD')
);

INSERT
  INTO TBL_MEMBER_ALIVE
VALUES  
(
  'testid04', 4, 010, 7894, 6543
, 'kimhyejj11', 'gmail.com', '13480', '경기 성남시 분당구 대왕판교로 477' 
, '쩌는아파트', '$2a$10$oIFB5dwGxF/BDdolMOF9z.ySU2cyhx3Of202zkq52sfU6d1L23UxW'
, '김혜주', TO_DATE(19951207, 'RRRRMMDD'), '염라대왕', 'W'
, TO_DATE(20170613, 'RRRRMMDD'), 'O', TO_DATE(20180513, 'RRRRMMDD'), TO_DATE(20150113, 'RRRRMMDD')
);

INSERT
  INTO TBL_MEMBER_ALIVE
VALUES  
(
  'testid05', 5, 010, 5478, 4732
, 'knsol1992', 'naver.com', '03154', '서울 종로구 종로 1' 
, '좋은아파트', '$2a$10$otS3uPXvCg5KGCVPrrIcB.PBVAHFPPWcPZJsKql3pgQXXcuwh4pKm'
, '김유유', TO_DATE(19630217, 'RRRRMMDD'), '나의살던고향은', 'M'
, TO_DATE(20220313, 'RRRRMMDD'), 'A', NULL, TO_DATE(20220113, 'RRRRMMDD')
);

-- MANAGER INSERT
INSERT 
  INTO TBL_MANAGER
VALUES  
(
  'managerid01', '$2a$10$TdU8nEbE9j0nznzA0Rb1/.9noPAi.BT8JqSXYMtnTaJDBbdinr5rW', '매니저'  
);

INSERT 
  INTO TBL_MANAGER
VALUES  
(
  'managerid02', '$2a$10$dEyFHCpg5664alyQSnmkjOp5fkcrOVJ5v0trJ48vChLRc0wTykk8.', '나큰솔'  
);

INSERT 
  INTO TBL_MANAGER
VALUES  
(
  'managerid03', '$2a$10$0whI5f3c1FqtsP004knIp.V/f2c3qtihY04fhDiT0r6R.U8c8y6pq', '김동동'  
);

INSERT 
  INTO TBL_MANAGER
VALUES  
(
  'managerid04', '$2a$10$0whI5f3c1FqtsP004knIp.V/f2c3qtihY04fhDiT0r6R.U8c8y6pq', '김효휴'  
);

INSERT 
  INTO TBL_MANAGER
VALUES  
(
  'managerid05', '$2a$10$0whI5f3c1FqtsP004knIp.V/f2c3qtihY04fhDiT0r6R.U8c8y6pq', '김수수'  
);


-- 시설 종류 INSERT
INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '수영장'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '탁구장'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '배드민턴장'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '클라이밍'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '강의실'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '농구장'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '소회의실'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '대강당'
);

-- 시설 관리 INSERT
INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '201'
, '수영장'
, 'N'
, 40
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '301'
, '탁구장'
, 'N'
, 20
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '302'
, '배드민턴장'
, 'N'
, 20
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '303'
, '클라이밍'
, 'N'
, 10
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '304'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '305'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '306'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '307'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '308'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '309'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '310'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '401'
, '농구장'
, 'N'
, 30
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '402'
, '대강당'
, 'N'
, 50
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '403'
, '소회의실'
, 'N'
, 20
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '404'
, '소회의실'
, 'N'
, 20
);

-- 강사 INSERT
INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '보라돌이', 'M', '1990/02/11'
, 'bora@naver.com', '010-1248-4158', '서울시 도봉구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '뚜비','M', '1991/02/11'
, 'bora1@naver.com', '010-1248-4128', '서울시 동작구', 'Y'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '나나','W', '1990/02/21'
, 'bora52@naver.com', '010-1348-4158', '서울시 동대문구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '뽀오오','W', '1990/02/11'
, 'bora5321@naver.com', '010-8658-4158', '서울시 도봉구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '왕햇님','W', '1990/02/11'
, 'sun@naver.com', '010-1248-4222', '서울시 송파구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '김레드','W', '1960/02/11'
, 'red@naver.com', '010-8564-4158', '서울시 성동구', 'Y'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '이블루','M', '1950/05/11'
, 'blue@naver.com', '010-4168-4158', '서울시 구로구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '박핑크','W', '1990/12/11'
, 'pink@naver.com', '010-6462-4558', '서울시 관악구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '최옐로우','W', '1910/02/11'
, 'yellow@naver.com', '010-1523-1623', '서울시 강남구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '장블랙','M', '1986/03/11'
, 'black@naver.com', '010-6486-5158', '서울시 도봉구', 'N'
);

-- 강사 이력 INSERT
INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '1', '한남대학교 영어영문학과, 장로회신학대학교 신학대학원 졸업,  한남대학교 일반대학 철학과, 다수의 언론사 칼럼니스트'
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '2', '한양대학교 불어영과, 서울대학교 신학대학원 졸업,  법무부 소년원 수퍼바이저, 사회복지법인 천성원 운영위원'
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '3', '연세대학교 철학과 졸업,  행복강연센터 대표, 법무부 인성교육 전문강사'
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '4', '중앙대학교 국악대학 창작음악학과 졸업,  트루코칭 대표강사, 강사야 파트너 강사, 스타벅스 코리아 근무'
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '5', '한양대학교 경영전문대학원 조직인사 전공, 중앙대학교 법과대학 법학과 졸업, 노무법인 마로 대표 '
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '6', '한국 체육 대학교 졸업, 전 농구 국가대표, 생활 체육지도사 2급 자격증 보유 '
);  

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '7', '한양대 체육학과  졸업, 전 탁구 국가대표, 생활 체육지도사 2급 자격증 보유, 보디빌딩 자격증 보유 '
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '8', '서울대 등산학과  졸업, 한국 등산 협회 대표, 등산 전문 자격증 1급 보유, 히말라야 등산 기록 20회 '
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '9', '한국 체육 대학교 졸업, 스포츠 수영 지도사 2급 보유, 한국 수영 협회 부대표'
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '10', '한국 체육대학교 테니스 학과 졸업, 미국 국제 개인 복식 우승, 전국 종별 개인 복식 3위, 전국 체전 단체 3위 기록 보유'
);

-- 문의 카테고리
INSERT
  INTO TBL_POST_CATEGORY
VALUES
(
  '1'
, '문화 강좌'
);

INSERT
  INTO TBL_POST_CATEGORY
VALUES
(
  '2'
, '체육 강좌'
);

INSERT
  INTO TBL_POST_CATEGORY
(
  CATE_NUM
, CATE_KIND
)
VALUES
(
  '3'
, '시설'
);

INSERT
  INTO TBL_POST_CATEGORY
VALUES
(
  '4'
, '직원'
);

INSERT
  INTO TBL_POST_CATEGORY

VALUES
(
  '5'
, '기타'
);


-- 공지사항 INSERT
INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'managerid01', 3, TO_DATE(20220603, 'RRRRMMDD')
, '2022년 수영장 수질 시험 성적서'
, '너나들이 중랑은 은 쾌적한 시설환경 제공을 위해 최선을 다하고 있습니다.
올해의 수영장 위생검사 역시 높은 성적을 거뒀습니다.
중랑의 가장 자랑스러운 수영장이 될 수 있는 그날까지, 
저희 너나들이 중랑 일원들은 모두 최선을 다하겠습니다.'
  ,60,0
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'managerid03', 5, TO_DATE(20220501, 'RRRRMMDD')
, '소식지 공감터 제31호(봄호) 발간 안내'
, '2022년 4월 29일 금요일 공단 소식지 공감터가 발간되었습니다. 
해당 소식지에는 너나들이 중랑에 대한 각종 소개는 물론,
회원분들이 흥미를 가질만한 정보들이 잔뜩 포함되어 있습니다.
관심 있으신 분은 센터로 문의주시면
발행 정보 관련 상세 정보를 드릴 수 있도록 하겠습니다.
감사합니다.'
, 123, 0
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'managerid03', 5, TO_DATE(20220608, 'RRRRMMDD')
, '2022년 고객모니터링단 모집 알림'
, '너나들이 중랑의 더 나은 서비스 제공을 위하여 
2022년 고객모니터링단을 모집합니다. 
모니터링단은 센터 이용에 있어 불편하셨던 점을 제보하는 역할을 수행하시며
참여시 성과에 따른 소정의 수당이 지급될 예정입니다.
감사합니다.'
, 200,0
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'managerid02', 5, TO_DATE(20220203, 'RRRRMMDD')
, '홈페이지 서비스 중단 안내'
, '너나들이 중랑의 더 나은 서비스 제공을 위하여 
5.28(토) 19:00~ 21:00 홈페이지 및 회원가입 서비스가 중단될 예정이오니 
회원분들의 양해 부탁드립니다. 
작업에 따라 시간은 변동될 수 있습니다. 참고 바랍니다. 
감사합니다'
, 200,0
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'managerid04', 4, TO_DATE(20220201, 'RRRRMMDD')
, '스승의날 선물 및 금품수수 금지안내'
, '너나들이 중랑의 강좌를 이용해 주시는 고객 여러분께 
진심으로 감사드립니다. 너나들이중랑시설은 
부정청탁 금지법을 적용받는 시설로 스승의날을 맞이하여 
지도강사 및 직원에 대한 선물 또는 
금품수수를 금지하고 있습니다. 
회원님들의 넓은 이해와 적극적인 협조 당부 드립니다.
감사합니다.'
  ,90,0
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'managerid03', 3, TO_DATE(20220603, 'RRRRMMDD')
, '전국동시지방선거 휴무일 안내'
, '2022년 6월 1일은 전국동시지방선거일은 휴무입니다. 
해당일에는 센터 업무가 제공되지 않으며
전화 상담 역시 어려운 점 참고 바랍니다. 
감사합니다'
, 40,0
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'managerid04', 1, TO_DATE(20220601, 'RRRRMMDD')
, '문화 강좌 수강료 인상 관련 안내'
, '안녕하세요, 너나들이 중랑입니다.
유감스럽게도 물류 비용 상승과 인건비 상승으로 인해
부득이하게 강좌료 인상이 이루어지게 되었습니다.
높아진 금액에 부합하는 더 좋은 서비스로 보답하겠습니다.
감사합니다.'
, 70,0
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'managerid02', 2, TO_DATE(20220501, 'RRRRMMDD')
, '체육강좌 안전 문제 관련 안내'
, '안녕하세요, 너나들이 중랑입니다.
체육 강좌의 경우, 회원분들의 부주의로 인한
안전 사고가 자주 발생하고 있는 상황입니다. 
회원분들의 안전을 위해 안전규칙을 마련하고 
전문 안전요원을 배치했음에도 불구하고
잦은 사고로 인한 문제가 많은 상황입니다.
회원분들 역시 시설 이용에 있어 주의하고
배려하는 모습을 가지도록 합시다. 
감사합니다.'
, 80,0
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'managerid05', 3, TO_DATE(20220101, 'RRRRMMDD')
, '대강의실 리모델링 관련 안내'
, '대강의실이 안전 문제로 리모델링이 결정되었습니다.
이로 인해 3월 27일까지 대강의실의 대관 및 시설 이용이 어려울 예정입니다.
공사 일정은 추후 변경될 수 있습니다.
회원분들의 많은 이해 부탁드립니다.
감사합니다.'
, 90,0
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'managerid04', 4, TO_DATE(20211201, 'RRRRMMDD')
, '올해의 직원상 수상 관련 안내'
, '안녕하십니까, 올해의 직원상을 수상받은 직원입니다.
회원분들의 따스한 배려로 인해 이처럼 영광스런 자리를 맡을 수 있게 되어 
감사할 따름입니다. 앞으로도 회원분들에 대한 친절을 잊지 않는 직원이 되겠습니다.
감사합니다.'
, 150,0
);

-- FAQ INSERT
INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'managerid01'
, 3
, '대관 이용시 주의사항이 있나요?'
, '-담배를 피우지 못합니다.
- 사용기간 중 시설물 및 기물이 오손 또는 파손될 때에는 허가 받은 자가 복구하여야 합니다. 
- 허가 받은 자는 경기 시 불상사가 발생치 않도록 최선을 다하여야 하며 아울러 불상사 발생시 허 가 받은 자가 책임을 져야 합니다.
- 현판 등의 선전물은 행사 종료 즉시 철거하여야 합니다. 
- 모든 시설은 취사 금지되어 있으며, 음식물 반입 및 취사가 금지됩니다.
- 대관 행사 후 시설물(현수막, 포스터)은 반드시 철거해야 하며, 종량제 쓰레기봉투를 미리 준비하셔서 마무리를 하셔야 합니다.'
, 0
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'managerid02'
, 3
, ' 대관 신청 절차가 궁금해요.'
, '대관은 수시허가로 접수를 받고 있습니다. 절차는 다음과 같습니다.
1. 대관신청 문의·상담 신청서제출 
2. 처리 
3. 대관료 입금 
4.행사 
5.시설물철거.'
, 22
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'managerid03'
, 3
, ' 운영시간은 어떻게 되나요?.'
, '우리센터의 운영시간은 아래와 같습니다. 
- 평일(월~금) 06:00 ~ 22:00 
- 토요일 09:00 ~ 18:00 
- 둘째,넷째 일요일 수영장 10:00 ~ 17:00 '
, 35
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'managerid04'
, 1
, ' 강좌환불은 어떻게 해야 하나요?.'
, '강좌 환불은 
개강전까지 100% 환불 가능 
개강후 일주일까지는 50 % 
그 이후에는 불가능 합니다. 
유선으로 신청 혹은 홈페이지 - 
마이페이지 -
강좌관리  -
수강환불 신청 에서 가능합니다.'
, 35
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'managerid01'
, 1
, '강좌 등록기간은 언제인가요?'
, '기존회원 접수기간은 2, 5, 8, 11월 첫 번째 주이며, 
신규회원 접수는 2, 5, 8, 11월 두 번째 주부터 말일까지입니다. 
방문접수와 인터넷접수 2가지 방법으로 등록하실 수 있으며,
방문접수 09:00 ~ 21:00, 인터넷접수 09:00 ~ 24:00까지입니다.
방문접수, 인터넷접수 모두 선착순 접수이며, 방문접수의 경우 06:00부터 대기번호표을 배부합니다.<br>
접수기간은 사정에 따라 다소 변경될 수도 있습니다.'
, 47
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'managerid02'
, 2
, '강좌 개강 후에도 접수가 가능한지요?'
, '대기자로 등록되어 있거나 정원이 마감되지 
않았을 경우 개강 후 접수가 가능합니다.
지나간 수업일수에 대해서는 수업보강, 
수강료 감액등이 없기 때문에 접수시 본인이 감안하셔야 합니다.'
, 52
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'managerid04'
, 4
, '직원분들 이력 정보 열람이 가능한가요'
, '직원분들의 개인 정보는 개인정보 보호법에 의거, 제공이 불가능합니다.
회원분들의 양해 부탁드립니다.'
, 63
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'managerid02'
, 5
, '주차장 위치가 어떻게 되나요'
, '주차장은 너나들이 중랑 근처 유료 주차장과, 지하에 위치한 내부 주차장 이용이 가능합니다.
내부 주차장은 수강 회원들에 한해 무료료 제공되며 외부 주차장의 경우 별도의 이용료가 필요합니다.
상세 요금 안내는 유선으로 상담 부탁드립니다.'
, 73
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'managerid01'
, 3
, '타구 소재 시민도 이용 제한이 없나요'
, '중랑구민 뿐만 아니라 타구 시민 및 외국인까지도 
제한 없이 이용이 가능합니다.'
, 83
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'managerid04'
, 2
, '체육 강좌는 안전 관련 규정이 있나요?'
, '클라이밍 등 일부 강좌는 수강 신청시 연령 제한 등이 있을 수 있습니다.
상세한 안전 관련 규정은 유선으로 문의시 안내 가능합니다.
감사합니다.'
, 97
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'managerid01'
, 1
, '문화 강좌는 어디서 신청하나요'
, '홈페이지 상단 메뉴바에서 강좌 안내 메뉴를 눌러 확인 가능합니다. 
전체 강좌, 문화 및 체육 강좌로 분류별 조회 및 신청이 가능합니다.
감사합니다.'
, 210
);

-- 강좌 INSERT

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 201, '수영 초급반', 10, 40, TO_DATE(20220605, 'YYYYMMDD'), TO_DATE(20220905, 'YYYYMMDD')
, '수영  초급반 강좌입니다', 3, 30000, '월', 'Y','체육', '전체' , '14:00~15:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 201, '수영 중급반', 10, 40, TO_DATE(20220605, 'YYYYMMDD'), TO_DATE(20220905, 'YYYYMMDD')
, '수영 중급반 강좌입니다', 3, 40000, '토', 'Y','체육', '전체'  , '10:00~11:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 201, '수영 고급반', 10, 40, TO_DATE(20220605, 'YYYYMMDD'), TO_DATE(20220905, 'YYYYMMDD')
, '수영  고급반 강좌입니다', 3, 50000, '일', 'Y','체육', '전체', '16:00~17:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 301, '탁구 초급반', 10, 20, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '탁구 초급반 강좌입니다', 2, 30000, '월수금', 'Y','체육', '전체' ,'11:00~12:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 301, '탁구 중급반', 10, 20, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '탁구 중급반 강좌입니다', 2, 40000, '화목토', 'Y','체육', '전체','09:00~10:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 301, '탁구 고급반', 10, 20, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '탁구 고급반 강좌입니다', 2, 50000, '일', 'Y','체육', '전체','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 401, '농구 초급반', 10, 40, TO_DATE(20220620, 'YYYYMMDD'), TO_DATE(20221005, 'YYYYMMDD')
, '농구  초급반 강좌입니다', 2, 50000, '화', 'Y','체육', '전체','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 401, '농구 중급반', 15, 40, TO_DATE(20220720, 'YYYYMMDD'), TO_DATE(20221105, 'YYYYMMDD')
, '농구  중급반 강좌입니다', 2, 60000, '수', 'Y','체육', '전체' ,'14:00~15:00'  
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 401, '농구 고급반', 18, 20, TO_DATE(20220820, 'YYYYMMDD'), TO_DATE(20221205, 'YYYYMMDD')
, '농구  고급반 강좌입니다', 2, 60000, '일', 'Y','체육', '전체','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 10, 302, '배드민턴 초급반', 11, 30, TO_DATE(20220620, 'YYYYMMDD'), TO_DATE(20220805, 'YYYYMMDD')
, '배드민턴 초급반 강좌입니다', 3, 50000, '수', 'Y','체육', '전체','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 10, 302, '배드민턴 중급반', 8, 30, TO_DATE(20220625, 'YYYYMMDD'), TO_DATE(20220815, 'YYYYMMDD')
, '배드민턴 중급반 강좌입니다', 3, 50000, '금', 'Y','체육', '전체'  ,'14:00~15:00'   
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 10, 302, '배드민턴 고급반', 5, 30, TO_DATE(20220715, 'YYYYMMDD'), TO_DATE(20220925, 'YYYYMMDD')
, '배드민턴 고급반 강좌입니다', 3, 50000, '일', 'Y','체육', '전체'   ,'14:00~15:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 303, '클라이밍 초급반', 3, 10, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220625, 'YYYYMMDD')
, '클라이밍 초급반 강좌입니다.', 1, 100000, '수', 'Y','체육', '전체' ,'14:00~15:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 303, '클라이밍 중급반', 7, 10, TO_DATE(20220715, 'YYYYMMDD'), TO_DATE(20220725, 'YYYYMMDD')
, '클라이밍 중급반 강좌입니다.', 1, 100000, '화','Y','체육','성인'  ,'14:00~15:00'   
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 303, '클라이밍 고급반', 3, 10, TO_DATE(20220815, 'YYYYMMDD'), TO_DATE(20220825, 'YYYYMMDD')
, '클라이밍 고급반 강좌입니다.', 1, 100000, '토', 'Y','체육', '전체'  ,'14:00~15:00' 
);


INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 5, 304, '모종심기', 10, 15, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '아동들을 위한 모종 심기 참여 교육 입니다.', 2, 20000, '월', 'Y','문화', '아동','14:00~15:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 7, 402, '인라인 스케이트', 5, 10, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220725, 'YYYYMMDD')
, '아동들을 위한 신나는 인라인 스케이트 강좌입니다.', 2, 30000, '화', 'Y','문화', '아동','14:00~15:00'  
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 304, '비누 만들기', 5, 20, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220715, 'YYYYMMDD')
, '아동들을 위한 재미있는 비누 만들기 강좌입니다.', 2, 30000, '월', 'Y','문화', '아동' ,'14:00~15:00'   
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 3, 304, '창의 미술', 3, 20, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220715, 'YYYYMMDD')
, '아이들의 창의력을 키워주는 창의 미술 강좌입니다.', 2, 30000, '화', 'Y','문화', '아동' ,'14:00~15:00'   
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 307, '도자기 공예(초급)', 13, 20, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220815, 'YYYYMMDD')
, '나만의 이쁜 도자기를 만들 수 있는 도자기 공예 초급반 입니다.', 2, 80000, '수', 'Y','문화', '아동','14:00~15:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 307, '도자기 공예(중급)', 8, 20, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220815, 'YYYYMMDD')
, '나만의 이쁜 도자기를 만들 수 있는 도자기 공예 중급반 입니다.', 2, 80000, '수', 'Y','문화', '아동','14:00~15:00'    
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 3, 308, '도자기 공예(초급)', 1, 20, TO_DATE(20220610, 'YYYYMMDD'), TO_DATE(20220810, 'YYYYMMDD')
, '아이들에게 추억을 선물하는 재미있는 보드게임 강좌입니다.', 2, 30000, '금', 'Y','문화', '아동','14:00~15:00'    
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 308, '촉감놀이(슬라임 만들기)', 18, 20, TO_DATE(20220710, 'YYYYMMDD'), TO_DATE(20220710, 'YYYYMMDD')
, '촉감놀이를 할 수 있는 슬라임 만들기 강좌입니다.', 2, 10000, '금', 'Y','문화', '아동' ,'14:00~15:00'   
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 305, '논술 교육', 3, 15, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '청소년들을 위한 논술 교육 입니다.', 2, 30000, '월', 'Y','문화', '청소년','14:00~15:00'    
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 310, '공부 멘토링', 18, 20, TO_DATE(20220610, 'YYYYMMDD'), TO_DATE(20221210, 'YYYYMMDD')
, '주변 대학과의 연계를 통해 공부 방법을 배울 수 있는 강좌입니다.', 2, 5000, '월', 'Y','문화', '청소년','14:00~15:00'       
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 305, '자기소개서 글짓기', 15, 20, TO_DATE(20220710, 'YYYYMMDD'), TO_DATE(20220810, 'YYYYMMDD')
, '자기소개서를 함께 작성하며 첨삭을 도와주는 강좌입니다.', 3, 30000, '수', 'Y','문화', '청소년' ,'14:00~15:00'        
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 3, 310, '도자기 공예(청소년)', 18, 20, TO_DATE(20220810, 'YYYYMMDD'), TO_DATE(20220910, 'YYYYMMDD')
, '나만의 이쁜 도자기를 만들 수 있는 도자기 공예 강좌입니다.', 3, 80000, '목', 'Y','문화', '청소년','14:00~15:00'       
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 308, '창의 미술(청소년)', 8, 20, TO_DATE(20220710, 'YYYYMMDD'), TO_DATE(20220910, 'YYYYMMDD')
, '청소년의 창의력을 키워줄 수 있는 창의 미술 강좌입니다.', 3, 50000, '목', 'Y','문화', '청소년','14:00~15:00'       
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 308, '보드 게임(청소년)', 3, 20, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220905, 'YYYYMMDD')
, '아이들에게 즐거운 추억을 선물할 수 있는 보드게임 강좌입니다.', 2, 30000, '목', 'Y','문화', '청소년','14:00~15:00'       
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 308, '피아노', 13, 20, TO_DATE(20220715, 'YYYYMMDD'), TO_DATE(20221105, 'YYYYMMDD')
, '피아노를 배울 수 있는 강좌입니다.', 3, 80000, '월', 'Y','문화', '청소년'  ,'14:00~15:00'     
);


INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 7, 306, '재태크', 8, 15, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '성인들을 위한 재태크 교육 입니다.', 2, 50000, '월', 'Y','문화', '성인'  ,'14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 307, '수채화 그림 그리기', 7, 30, TO_DATE(20220715, 'YYYYMMDD'), TO_DATE(20220901, 'YYYYMMDD')
, '수채화 그림을 그릴 수 있는 강좌입니다.', 2, 50000, '수', 'Y','문화', '성인'  ,'14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 307, '인형 만들기', 13, 20, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220905, 'YYYYMMDD')
, '나만의 인형을 만들어 볼 수 있는 강좌입니다.', 2, 30000, '일', 'Y','문화', '성인','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 306, '취업 자기소개서 글짓기', 19, 20, TO_DATE(20220715, 'YYYYMMDD'), TO_DATE(20220715, 'YYYYMMDD')
, '취업률 보장하는 무적권 합격시켜주는 야무진 자기소개서 작성법 특별히 알려주는 강좌', 2, 10000, '월', 'Y','문화', '성인' ,'14:00~15:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 5, 307, '스피치', 3, 30, TO_DATE(20220617, 'YYYYMMDD'), TO_DATE(20220628, 'YYYYMMDD')
, '남들앞에서 당당하게 말할 수 있는 비법을 알려주는 스피치 강좌', 3, 30000, '화', 'Y','문화', '성인','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 5, 306, '플로이스트', 13, 30, TO_DATE(20220701, 'YYYYMMDD'), TO_DATE(20220728, 'YYYYMMDD')
, '아름다운 꽃을 만들어 사랑하는 사람에게 선물하세요. 최고의 플로이스트가 강의하는 강좌입니다.', 2, 30000, '수', 'Y','문화', '성인','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 309, '가죽공예', 17, 30, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220728, 'YYYYMMDD')
, '수준높은 가죽공예 강좌입니다.', 2, 150000, '목', 'Y','문화', '성인' ,'14:00~15:00'    
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 3, 310, '도자기 공예', 13, 15, TO_DATE(20220618, 'YYYYMMDD'), TO_DATE(20220828, 'YYYYMMDD')
, '나만의 이쁜 도자기를 만들 수 있는 강좌입니다.', 3, 80000, '금', 'Y','문화', '성인' ,'14:00~15:00'   
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 306, '문예창작', 15, 20, TO_DATE(20220627, 'YYYYMMDD'), TO_DATE(20221018, 'YYYYMMDD')
, '문예창작 강좌입니다.', 2, 50000, '화', 'Y','문화', '성인','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 8, 307, '바둑', 9, 15, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '시니어를 위한 바둑 교육 입니다.', 2, 20000, '금', 'Y','문화', '성인','14:00~15:00'    
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 307, '스마트폰 사용법 ', 28, 30, TO_DATE(20220618, 'YYYYMMDD'), TO_DATE(20220701, 'YYYYMMDD')
, '어르신들에게 스마트폰 사용법과 인터넷 뱅킹을 알려드리는 안성맞춤 강좌', 1, 5000, '수', 'Y','문화', '성인','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 307, '키오스크 사용법 ', 25, 30, TO_DATE(20220618, 'YYYYMMDD'), TO_DATE(20220701, 'YYYYMMDD')
, '어르신들에게 키오스크 사용법을 알려드리는 강좌', 1, 5000, '목', 'Y','문화', '시니어' ,'14:00~15:00'    
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 307, '보이스 피싱 예방 ', 28, 30, TO_DATE(20220618, 'YYYYMMDD'), TO_DATE(20220701, 'YYYYMMDD')
, '어르신들에게 보이스 피싱을 예방하는 법을 알려주는 강좌', 1, 5000, '금',  'Y','문화', '시니어','14:00~15:00'         
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 308, '노래교실 ', 8, 10, TO_DATE(20220718, 'YYYYMMDD'), TO_DATE(20221201, 'YYYYMMDD')
, '어르신들에게 노래를 알려주는 강좌', 3, 5000, '수',  'Y','문화', '시니어' ,'14:00~15:00'      
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 308, '인형극 ', 3, 10, TO_DATE(20220718, 'YYYYMMDD'), TO_DATE(20220918, 'YYYYMMDD')
, '어르신들이 인형극을 직접 해볼수 있도록 도와주는 강좌', 3, 3000, '월', 'Y','문화', '시니어','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 306, '칠교 ', 3, 10, TO_DATE(20220618, 'YYYYMMDD'), TO_DATE(20220918, 'YYYYMMDD')
, '어르신들의 치매 예방을 도와주는 칠교 놀이 강좌', 3, 3000, '금',  'Y','문화', '시니어' ,'14:00~15:00'      
);

-- 강사 모집

INSERT
  INTO TBL_TEACHER_EMPLOYMENT
VALUES
(  SEQ_EMPLOYMENT_POST_NUM.NEXTVAL, 'managerid01', 1
 , '수영교실 시간강사 신규채용 모집공고'
 , TO_DATE(20220602,'RRRRMMDD')
 , DEFAULT
 , '가. 공고일 기준 만 20세 이상
나. 성범죄 및 아동학대범죄(아동·청소년 및 성보호에 관한 법률) 위반 사실이 없는 자
다. 연령, 지역, 성별 : 제한 없음
라. 자격 요건 : 인명구조원자격 필수(수상구조사, 대한적십자사, 경영자협회 등)'
 , 1
 , '너나들이 중랑에서 근무하실 시간강사를 다음과 같이 모집합니다.
1. 채용 분야 및 선발 예정 인원
가. 채용분야 : 수영교실 시간강사 (15시간미만 기간제 근로자)
나. 채용인원 : 2명
다. 근무장소 : 너나들이 중랑 수영장
라. 직무내용 : 안전근무 및 안전관리업무
마. 입사예정일 : 2022. 6. 13.(월) 근무시작일
2. 근로 조건 및 임금
가. 근무배치 : 아래 표 참조하여 붙임 강사지원서 이름 옆 희망 근무시간 번호 기재바랍니다.'
 ,'3. 모집일정
가. 1차 서류 전형) : 2022. 5. 23.(월) ~ 2022. 5. 31(화) *접수기간
※ 접수 이메일 주소 : manager01@eonadeul.com
혹은 방문접수 하시면 됩니다.
첨부파일 강사지원서(양식)에 작성 바랍니다.
나. 2차 면접 : 2022. 6. 7.(화) ~ 6.10(금)
다. 합격자 발표 : 개별 통지
4. 기타(유의)사항
가. 응시 희망자는 자격요건 등을 정확히 확인하고 응시하시기 바랍니다.
나. 해당분야에 적격자가 없을 경우 채용하지 않을 수 있으며, 합격자 통지 후라도 ‘성범죄및아동학대범죄전력조회’ 등을 통하여
결격사유가 발견될 경우 합격이 취소될 수 있습니다.
다. 증빙서류에 허위사실을 기재함으로써 시험결과에 부당한 영향을주는 행위를 한 사람은 그 시험을 정지 또는 무효로 하거나
합격 결정을 취소할 수 있습니다.
라. 응시원서 작성 내용의 착오 또는 누락, 연락불능으로 인하여 발생하는 불이익은 응시자 본인의 책임입니다.
마. 응시자 제출서류는 채용여부가 확정된 이후 응시자(확정된 채용대상자는 제외)가 반환을 청구하는 경우 본인임을 확인한 후
「채용절차의 공정화에 관한 법률」 제11조(채용서류의 반환 등)에 따라 반환합니다. 다만, 같은 법 제7조제1항에 따라 홈페이
지 또는 전자우편으로 제출된 경우나 응시자가 채용권자의 요구없이 자발적으로 제출한 경우에는 반환하지 않습니다.
※ 기타 상세한 내용은 연락 문의하시기 바랍니다.'
);

INSERT
  INTO TBL_TEACHER_EMPLOYMENT
VALUES
(  SEQ_EMPLOYMENT_POST_NUM.NEXTVAL, 'managerid02', 4
 , '탁구 초급반 강사 신규채용 모집공고'
 , TO_DATE(20220605,'RRRRMMDD')
 , DEFAULT
 ,  '가. 공고일 기준 만 20세 이상
나. 성범죄 및 아동학대범죄(아동·청소년 및 성보호에 관한 법률) 위반 사실이 없는 자
다. 연령, 지역, 성별 : 제한 없음'
 , 2
 , '너나들이 중랑에서 근무하실 시간강사를 다음과 같이 모집합니다.
1. 채용 분야 및 선발 예정 인원
가. 채용분야 : 탁구 초급반 시간강사 (15시간미만 기간제 근로자)
나. 채용인원 : 1명
다. 근무장소 : 너나들이 중랑 탁구장
라. 직무내용 : 탁구 초급반 강의
마. 입사예정일 : 2022. 6. 30.(목) 근무시작일
2. 근로 조건 및 임금
가. 근무배치 : 아래 표 참조하여 붙임 강사지원서 이름 옆 희망 근무시간 번호 기재바랍니다.'
 ,'3. 모집일정
가. 1차 서류 전형) : 2022. 6. 6.(월) ~ 2022. 6. 17(금) *접수기간
※ 접수 이메일 주소 : managerid02@nndi.com
혹은 방문접수 하시면 됩니다.
첨부파일 강사지원서(양식)에 작성 바랍니다.
나. 2차 면접 : 2022. 6. 20.(월) ~ 6.22(수)
다. 합격자 발표 : 개별 통지
4. 기타(유의)사항
가. 응시 희망자는 자격요건 등을 정확히 확인하고 응시하시기 바랍니다.
나. 해당분야에 적격자가 없을 경우 채용하지 않을 수 있으며, 합격자 통지 후라도 ‘성범죄및아동학대범죄전력조회’ 등을 통하여
결격사유가 발견될 경우 합격이 취소될 수 있습니다.
다. 증빙서류에 허위사실을 기재함으로써 시험결과에 부당한 영향을주는 행위를 한 사람은 그 시험을 정지 또는 무효로 하거나
합격 결정을 취소할 수 있습니다.
라. 응시원서 작성 내용의 착오 또는 누락, 연락불능으로 인하여 발생하는 불이익은 응시자 본인의 책임입니다.
마. 응시자 제출서류는 채용여부가 확정된 이후 응시자(확정된 채용대상자는 제외)가 반환을 청구하는 경우 본인임을 확인한 후
「채용절차의 공정화에 관한 법률」 제11조(채용서류의 반환 등)에 따라 반환합니다. 다만, 같은 법 제7조제1항에 따라 홈페이
지 또는 전자우편으로 제출된 경우나 응시자가 채용권자의 요구없이 자발적으로 제출한 경우에는 반환하지 않습니다.
※ 기타 상세한 내용은 연락 문의하시기 바랍니다.'
);

INSERT
  INTO TBL_TEACHER_EMPLOYMENT
VALUES
(  SEQ_EMPLOYMENT_POST_NUM.NEXTVAL, 'managerid03', 15
 , '클라이밍 고급반 강사 신규채용 모집공고'
 , TO_DATE(20220610,'RRRRMMDD')
 , DEFAULT
 ,  '가. 공고일 기준 만 20세 이상
나. 성범죄 및 아동학대범죄(아동·청소년 및 성보호에 관한 법률) 위반 사실이 없는 자
다. 연령, 지역, 성별 : 제한 없음'
 , 1
 , '너나들이 중랑에서 근무하실 시간강사를 다음과 같이 모집합니다.
1. 채용 분야 및 선발 예정 인원
가. 채용분야 : 클라이밍 고급반 시간강사 (15시간미만 기간제 근로자)
나. 채용인원 : 1명
다. 근무장소 : 너나들이 중랑 클라이밍 시설
라. 직무내용 : 클라이밍 고급반 강의
마. 입사예정일 : 2022. 6. 30.(목) 근무시작일
2. 근로 조건 및 임금
가. 근무배치 : 아래 표 참조하여 붙임 강사지원서 이름 옆 희망 근무시간 번호 기재바랍니다.'
 ,'3. 모집일정
가. 1차 서류 전형) : 2022. 6. 6.(월) ~ 2022. 6. 17(금) *접수기간
※ 접수 이메일 주소 : managerid03@nndi.com
혹은 방문접수 하시면 됩니다.
첨부파일 강사지원서(양식)에 작성 바랍니다.
나. 2차 면접 : 2022. 6. 20.(월) ~ 6.22(수)
다. 합격자 발표 : 개별 통지
4. 기타(유의)사항
가. 응시 희망자는 자격요건 등을 정확히 확인하고 응시하시기 바랍니다.
나. 해당분야에 적격자가 없을 경우 채용하지 않을 수 있으며, 합격자 통지 후라도 ‘성범죄및아동학대범죄전력조회’ 등을 통하여
결격사유가 발견될 경우 합격이 취소될 수 있습니다.
다. 증빙서류에 허위사실을 기재함으로써 시험결과에 부당한 영향을주는 행위를 한 사람은 그 시험을 정지 또는 무효로 하거나
합격 결정을 취소할 수 있습니다.
라. 응시원서 작성 내용의 착오 또는 누락, 연락불능으로 인하여 발생하는 불이익은 응시자 본인의 책임입니다.
마. 응시자 제출서류는 채용여부가 확정된 이후 응시자(확정된 채용대상자는 제외)가 반환을 청구하는 경우 본인임을 확인한 후
「채용절차의 공정화에 관한 법률」 제11조(채용서류의 반환 등)에 따라 반환합니다. 다만, 같은 법 제7조제1항에 따라 홈페이
지 또는 전자우편으로 제출된 경우나 응시자가 채용권자의 요구없이 자발적으로 제출한 경우에는 반환하지 않습니다.
※ 기타 상세한 내용은 연락 문의하시기 바랍니다.'
);

INSERT
  INTO TBL_TEACHER_EMPLOYMENT
VALUES
(  SEQ_EMPLOYMENT_POST_NUM.NEXTVAL, 'managerid04', 24
 , '논술교육 강사 모집공고'
 , TO_DATE(20220610,'RRRRMMDD')
 , DEFAULT
 ,  '가. 공고일 기준 만 20세 이상
나. 성범죄 및 아동학대범죄(아동·청소년 및 성보호에 관한 법률) 위반 사실이 없는 자
다. 연령, 지역, 성별 : 제한 없음'
 , 1
 , '너나들이 중랑에서 근무하실 시간강사를 다음과 같이 모집합니다.
1. 채용 분야 및 선발 예정 인원
가. 채용분야 : 논술교육 강사
나. 채용인원 : 1명
다. 근무장소 : 너나들이 중랑 강의실 (추후 배치 예정)
라. 직무내용 : 논술교육
마. 입사예정일 : 2022. 6. 30.(목) 근무시작일
2. 근로 조건 및 임금
가. 근무배치 : 아래 표 참조하여 붙임 강사지원서 이름 옆 희망 근무시간 번호 기재바랍니다.'
 ,'3. 모집일정
가. 1차 서류 전형) : 2022. 6. 6.(월) ~ 2022. 6. 17(금) *접수기간
※ 접수 이메일 주소 : managerid04@nndi.com
혹은 방문접수 하시면 됩니다.
첨부파일 강사지원서(양식)에 작성 바랍니다.
나. 2차 면접 : 2022. 6. 20.(월) ~ 6.22(수)
다. 합격자 발표 : 개별 통지
4. 기타(유의)사항
가. 응시 희망자는 자격요건 등을 정확히 확인하고 응시하시기 바랍니다.
나. 해당분야에 적격자가 없을 경우 채용하지 않을 수 있으며, 합격자 통지 후라도 ‘성범죄및아동학대범죄전력조회’ 등을 통하여
결격사유가 발견될 경우 합격이 취소될 수 있습니다.
다. 증빙서류에 허위사실을 기재함으로써 시험결과에 부당한 영향을주는 행위를 한 사람은 그 시험을 정지 또는 무효로 하거나
합격 결정을 취소할 수 있습니다.
라. 응시원서 작성 내용의 착오 또는 누락, 연락불능으로 인하여 발생하는 불이익은 응시자 본인의 책임입니다.
마. 응시자 제출서류는 채용여부가 확정된 이후 응시자(확정된 채용대상자는 제외)가 반환을 청구하는 경우 본인임을 확인한 후
「채용절차의 공정화에 관한 법률」 제11조(채용서류의 반환 등)에 따라 반환합니다. 다만, 같은 법 제7조제1항에 따라 홈페이
지 또는 전자우편으로 제출된 경우나 응시자가 채용권자의 요구없이 자발적으로 제출한 경우에는 반환하지 않습니다.
※ 기타 상세한 내용은 연락 문의하시기 바랍니다.'
);

INSERT
  INTO TBL_TEACHER_EMPLOYMENT
VALUES
(  SEQ_EMPLOYMENT_POST_NUM.NEXTVAL, 'managerid05', 20
 , '도자기공예 강사 모집공고'
 , TO_DATE(20220615,'RRRRMMDD')
 , DEFAULT
 ,  '가. 공고일 기준 만 20세 이상
나. 성범죄 및 아동학대범죄(아동·청소년 및 성보호에 관한 법률) 위반 사실이 없는 자
다. 연령, 지역, 성별 : 제한 없음'
 , 1
 , '너나들이 중랑에서 근무하실 시간강사를 다음과 같이 모집합니다.
1. 채용 분야 및 선발 예정 인원
가. 채용분야 : 도자기공예 강사
나. 채용인원 : 1명
다. 근무장소 : 너나들이 중랑 강의실(추후 배치 예정)
라. 직무내용 : 도자기공예 강의
마. 입사예정일 : 2022. 7. 1.(금) 근무시작일
2. 근로 조건 및 임금
가. 근무배치 : 아래 표 참조하여 붙임 강사지원서 이름 옆 희망 근무시간 번호 기재바랍니다.'
 ,'3. 모집일정
가. 1차 서류 전형) : 2022. 6. 20.(월) ~ 2022. 6. 24(금) *접수기간
※ 접수 이메일 주소 : managerid05@nndi.com
혹은 방문접수 하시면 됩니다.
첨부파일 강사지원서(양식)에 작성 바랍니다.
나. 2차 면접 : 2022. 6. 27.(월) ~ 6.29(수)
다. 합격자 발표 : 개별 통지
4. 기타(유의)사항
가. 응시 희망자는 자격요건 등을 정확히 확인하고 응시하시기 바랍니다.
나. 해당분야에 적격자가 없을 경우 채용하지 않을 수 있으며, 합격자 통지 후라도 ‘성범죄및아동학대범죄전력조회’ 등을 통하여
결격사유가 발견될 경우 합격이 취소될 수 있습니다.
다. 증빙서류에 허위사실을 기재함으로써 시험결과에 부당한 영향을주는 행위를 한 사람은 그 시험을 정지 또는 무효로 하거나
합격 결정을 취소할 수 있습니다.
라. 응시원서 작성 내용의 착오 또는 누락, 연락불능으로 인하여 발생하는 불이익은 응시자 본인의 책임입니다.
마. 응시자 제출서류는 채용여부가 확정된 이후 응시자(확정된 채용대상자는 제외)가 반환을 청구하는 경우 본인임을 확인한 후
「채용절차의 공정화에 관한 법률」 제11조(채용서류의 반환 등)에 따라 반환합니다. 다만, 같은 법 제7조제1항에 따라 홈페이
지 또는 전자우편으로 제출된 경우나 응시자가 채용권자의 요구없이 자발적으로 제출한 경우에는 반환하지 않습니다.
※ 기타 상세한 내용은 연락 문의하시기 바랍니다.'
);

INSERT
  INTO TBL_TEACHER_EMPLOYMENT
VALUES
(  SEQ_EMPLOYMENT_POST_NUM.NEXTVAL, 'managerid01', 36
 , '플로이스트 모집공고'
 , TO_DATE(20220601,'RRRRMMDD')
 , DEFAULT
 ,'가. 공고일 기준 만 20세 이상
나. 성범죄 및 아동학대범죄(아동·청소년 및 성보호에 관한 법률) 위반 사실이 없는 자
다. 연령, 지역, 성별 : 제한 없음'
, 1
, '너나들이 중랑에서 근무하실 시간강사를 다음과 같이 모집합니다.
1. 채용 분야 및 선발 예정 인원
가. 채용분야 : 플로이스트
나. 채용인원 : 1명
다. 근무장소 : 너나들이 중랑 강의실(추후 배치예정)
라. 직무내용 : 플로이스트 강의
마. 입사예정일 : 2022. 7. 1.(금) 근무시작일
2. 근로 조건 및 임금
가. 근무배치 : 아래 표 참조하여 붙임 강사지원서 이름 옆 희망 근무시간 번호 기재바랍니다.'
,'3. 모집일정
가. 1차 서류 전형) : 2022. 6. 20.(월) ~ 2022. 6. 24(금) *접수기간
※ 접수 이메일 주소 : managerid02@nndi.com
혹은 방문접수 하시면 됩니다.
첨부파일 강사지원서(양식)에 작성 바랍니다.
나. 2차 면접 : 2022. 6. 27.(월) ~ 6.29(수)
다. 합격자 발표 : 개별 통지
4. 기타(유의)사항
가. 응시 희망자는 자격요건 등을 정확히 확인하고 응시하시기 바랍니다.
나. 해당분야에 적격자가 없을 경우 채용하지 않을 수 있으며, 합격자 통지 후라도 ‘성범죄및아동학대범죄전력조회’ 등을 통하여
결격사유가 발견될 경우 합격이 취소될 수 있습니다.
다. 증빙서류에 허위사실을 기재함으로써 시험결과에 부당한 영향을주는 행위를 한 사람은 그 시험을 정지 또는 무효로 하거나
합격 결정을 취소할 수 있습니다.
라. 응시원서 작성 내용의 착오 또는 누락, 연락불능으로 인하여 발생하는 불이익은 응시자 본인의 책임입니다.
마. 응시자 제출서류는 채용여부가 확정된 이후 응시자(확정된 채용대상자는 제외)가 반환을 청구하는 경우 본인임을 확인한 후
「채용절차의 공정화에 관한 법률」 제11조(채용서류의 반환 등)에 따라 반환합니다. 다만, 같은 법 제7조제1항에 따라 홈페이
지 또는 전자우편으로 제출된 경우나 응시자가 채용권자의 요구없이 자발적으로 제출한 경우에는 반환하지 않습니다.
※ 기타 상세한 내용은 연락 문의하시기 바랍니다.'
);



--------------------------------------------------------------
-- 문의(QNA) INSERT
INSERT
  INTO TBL_POST_QUESTION
VALUES
(
  SEQ_QUESTION_POST_NUM.NEXTVAL
, '1'
, 'testid02'
, 'managerid02'
, TO_DATE(20220613,'RRRRMMDD')
, '스마트폰 사용법 강의 문의'
, '스마트폰 사용법 강의에 필요한 폰 종류가 따로 있나요?'
, 'Y'
, '스마트폰 종류는 아무거나 준비해 오시면 됩니다, 안드로이드, ios 모두 교육가능 합니다.'
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_QUESTION
VALUES
(
  SEQ_QUESTION_POST_NUM.NEXTVAL
, '1'
, 'testid04'
, 'managerid02'
, TO_DATE(20220512,'RRRRMMDD')
, '주식 강의 문의'
, '강사님은 주식투자로 얼마나 벌었나요?'
, 'Y'
, '관련 내용에 대해서는 개인적인 부분이라 저희가 답변 드리기 힘드니 양해바랍니다.'
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_QUESTION
VALUES
(
  SEQ_QUESTION_POST_NUM.NEXTVAL
, '1'
, 'testid04'
, 'managerid04'
, TO_DATE(20220612,'RRRRMMDD')
, '촉감 놀이 슬라임 만들기 문의'
, '슬라임은 인체에 무해 한가요?'
, 'N'
, null
, 'Y'
, 32
);

INSERT
  INTO TBL_POST_QUESTION
VALUES
(
  SEQ_QUESTION_POST_NUM.NEXTVAL
, '2'
, 'testid01'
, 'managerid03'
, TO_DATE(20220610,'RRRRMMDD')
, '1박 2일 캠핑체험 문의'
, '캠핑장에 가면 따로 놀거리가 있나요?'
, 'N'
, null
, 'Y'
, 48
);

INSERT
  INTO TBL_POST_QUESTION
VALUES
(
  SEQ_QUESTION_POST_NUM.NEXTVAL
, '3'
, 'testid01'
, 'managerid03'
, TO_DATE(20220512,'RRRRMMDD')
, '수영장에 쳬중계가 고장난거 같아요'
, '수영장 체중계가 이상해요 어제는 48kg이었는데 여기 오니 53kg이에요
뭔가 이상하잖아요 진짜.'
, 'Y'
, '직원의 확인 결과 체중계는 망가지지 않은 것으로 확인되었습니다.'
, 'Y'
, 57
);

INSERT
  INTO TBL_POST_QUESTION
VALUES
(
  SEQ_QUESTION_POST_NUM.NEXTVAL
, '4'
, 'testid01'
, 'managerid04'
, TO_DATE(20220412,'RRRRMMDD')
, '안내 데스크에 있던 직원분 성함이 뭔가요'
, '너무 제 취향이시던데 성함이랑 연락처좀 알 수 있을까요 제발.'
, 'N'
, NULL
, 'Y'
, 67
);

INSERT
  INTO TBL_POST_QUESTION
VALUES
(
  SEQ_QUESTION_POST_NUM.NEXTVAL
, '5'
, 'testid05'
, 'managerid01'
, TO_DATE(20220512,'RRRRMMDD')
, '강사분들 직원 복지는 잘 챙겨주시나요'
, '취직하고 싶은데 복지가 어떻게 되는지 궁금해요. 특히 문화 강사'
, 'Y'
, '4대 보험 제공됩니다. 
월급은 강사분들에 따라 다릅니다. 
공지사항의 강사 모집 게시글을 참조 부탁드립니다.'
, 'N'
, 79
);


-------------------------------------------------------------
-- 민원
INSERT
  INTO TBL_POST_COMPLAIN
VALUES
(
  SEQ_COMPLAIN_POST_NUM.NEXTVAL
, '4'
, 'testid01'
, 'managerid01'
, TO_DATE(20220602,'RRRRMMDD')
, '직원이 너무 불친절 하네요'
, '안녕하세요.
5월31일 아침 9시반에 수영 운영시간 시간표를 확인하려고 전화를 했더니 전화 받은 여자분이 엄청 빠른 속도로 월수금 언제고 화목 언제고 알려줬어요.

시간표 따로 적을거라고 다시 말씀해달라고 하니까 또 다시 엄청 빠른 속도로 말을 하셨네요???

분명히 적을거라고 말씀드렸는데 왜 그렇게 급하신지 모르겠네요???

그래서 또 다시 천천히 해달라고 하니까 큰 한 숨을 쉬더라고요??? 고객 앞에서???

이거 말이 된다고 생각하세요???

제가 말은 이해 못하는거도 아니고 직원분이 급한 속도로 말은 하는데 어떻게 적어야할까요?

전화할 때 녹음된다고 하는데 한 번 들었으면 좋겠네요. 그 여직원 어떤 태도인지

당장 화 안내는 내가 참 대단할 정도로 생각해요.

생각할 수록 너무 화가 나서 회원가입까지 하고 글을 남겼습니다.

잘 처리했으면 좋겠습니다. 감사합니다.'
, 'Y'
, '안녕하세요. 너나들이입니다.

먼저 저희 센터에서 친절하지 못한 서비스 제공으로 회원님께 불편을 드려 죄송합니다.

불편을 드린 수영 시간표 업로드는 빠른 시간안에 공지하도록 하겠습니다.

불친절한 고객응대에 대해서는 접수처직원 전화 응대교육 및 친절교육을 진행토록 하겠습니다.

다시한번 회원님께 진심으로 사과 말씀 올리며 앞으로 노력하는 너나들이가 되도록 하겠습니다.'
, 'N'
, DEFAULT
);

INSERT
  INTO TBL_POST_COMPLAIN
VALUES
(
  SEQ_COMPLAIN_POST_NUM.NEXTVAL
, '2' 
, 'testid01'
, 'managerid01'
, TO_DATE(20220610,'RRRRMMDD')
, '수영장 물 온도 관련'
, '수영장 물온도가 너무 높은거 같습니다. 예전보다 물온도가 높아서 수영하기가 힘듭니다.

물온도 낮춰주세요.

그리고 수영장 주변 물 빠지는데에서 냄새가 나네요.

청소가 필요해 보입니다.'
, 'Y'
, '안녕하세요. 너나들이입니다. 먼저 고객님의 고견에 감사드립니다.

너나들이수영장은 28~28.5도의 수온을 유지하고 있습니다. 수영장 적정 수온은 28~29도(대한수영연맹 권장)이며, 실온은 29~30도로 날씨에 따라 유동적으로 운영하고 있습니다. 참고 부탁드립니다.

또한 수영장 배수 관련 점검을 실시하여 고객님들께서 이용하시는데에 문제가 없도록 하겠습니다.'
, 'N'
, DEFAULT
);

INSERT
  INTO TBL_POST_COMPLAIN
VALUES
(
  SEQ_COMPLAIN_POST_NUM.NEXTVAL
, '1' 
, 'testid02'
, 'managerid02'
, TO_DATE(20220605,'RRRRMMDD')
, '수채화 그림 환불요청이 아직 처리가 안되었네요'
, ' 한참전에 환불요청을 했는데 아직도 처리가 안되어있어요!! 확인좀 해주세요'
, 'Y'
, '안녕하세요. 너나들이입니다. 고객님의 요청을 확인 해보니 환불 처리가 되어있는 상태인데 확인이 불가하시면 연락 바랍니다. 감사합니다.'
, 'N'
, DEFAULT
);

INSERT
  INTO TBL_POST_COMPLAIN
VALUES
(
  SEQ_COMPLAIN_POST_NUM.NEXTVAL
, '3' 
, 'testid03'
, 'managerid01'
, TO_DATE(20220607,'RRRRMMDD')
, '농구장 바닥이 너무 더러워요 청소 바랍니다.'
, ' 농구장에 누가 뭘 흘렸는지 바닥이 끈적끈적하네요 확인 부탁드립니다.'
, 'Y'
, '안녕하세요. 너나들이입니다. 확인 후 청소 완료 하였습니다. 문의 감사합니다.'
, 'N'
, DEFAULT
);

INSERT
  INTO TBL_POST_COMPLAIN
VALUES
(
  SEQ_COMPLAIN_POST_NUM.NEXTVAL
, '3' 
, 'testid04'
, 'managerid05'
, TO_DATE(20220607,'RRRRMMDD')
, '탁구장 시설 확인 요청'
, ' 탁구장 테이블 구석이 부러진 부분이 있어서 날카로워요 ㅜㅜ 다른 사람들이 다칠수도 있을거 같은데 확인 바랍니다!'
, 'Y'
, '안녕하세요. 너나들이입니다. 확인 후 조취 완료 하였습니다. 문의 감사합니다.'
, 'N'
, DEFAULT
);

INSERT
  INTO TBL_POST_COMPLAIN
VALUES
(
  SEQ_COMPLAIN_POST_NUM.NEXTVAL
, '4' 
, 'testid05'
, 'managerid04'
, TO_DATE(20220530,'RRRRMMDD')
, '안내데스크 직원분이 너무 불친절 합니다.'
, ' 뭐좀 물어볼게 있는데 기분이 안좋으신지 대답을 좀...  잘 안들리시는건지 모르겠네요
저는 친절하게 물어봤는데 ^^... 직원 교육부서는 따로없나요? '
, 'Y'
, '안녕하세요 너나들이 중랑입니다. 먼저 고객님께 죄송하다는 말씀 드립니다. 
  불친절한 고객응대에 대해서는 직원 응대교육 및 친절교육을 진행토록 하겠습니다.
다시한번 회원님께 진심으로 사과 말씀 올리며 앞으로 노력하는 너나들이가 되도록 하겠습니다.'
, 'N'
, DEFAULT
);


INSERT
  INTO TBL_POST_COMPLAIN
VALUES
(
  SEQ_COMPLAIN_POST_NUM.NEXTVAL
, '2' 
, 'testid01'
, 'managerid03'
, TO_DATE(20220612,'RRRRMMDD')
, '체육강좌 추가좀 해주세요'
, ' 강좌가 너무 없는것 같아요 필라테스나 요가같은 강좌는 추가할 계획이 없나요?'
, 'N'
, 'NULL'
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_COMPLAIN
VALUES
(
  SEQ_COMPLAIN_POST_NUM.NEXTVAL
, '2' 
, 'testid02'
, 'managerid01'
, TO_DATE(20220612,'RRRRMMDD')
, '저녁 탁구반좀 늘려주세요~~'
, ' 저녁 탁구반을 늘려주세요. 수강신청 시작하자마자 1시간 내에 만원된거 같아요. 지금 대기인원이 10명인데 한 반 늘리면 다 찰거같아요.'
, 'Y'
, '안녕하세요. 너나들이입니다.

저희 센터를 이용해주셔서 감사드리며, 회원님께서 건의하신 탁구 교실과 관련된 사항에 대해 아래와 같이 답변드립니다.

회원님께서 요청하신 사항(야간 탁구교실 개설)에 대해 공감하는 바이나

현재 대체육관 야간시간대의 경우 타강좌가 진행중(유휴시간대 부재)으로 바로 강의 개설 반영에는 어려움이 있습니다.  

회원님께서 건의주신 야간(탁구교실)개설 요청과 관련하여 유휴시간대 발생시 고객 수요조사 등 제반사항을 종합적으로 고려하여 향후 회원님의 의견이 반영될 수 있도록 검토하도록 하겠습니다. 

소중한 의견 감사드리며, 다른 문의사항이 있으시거나 궁금하신 점이 있으시면 언제든지 너나들이 중랑으로 문의하여 주시면 친절히 답변하여 드리겠습니다. 감사합니다.'
, 'N'
, DEFAULT
);

INSERT
  INTO TBL_POST_COMPLAIN
VALUES
(
  SEQ_COMPLAIN_POST_NUM.NEXTVAL
, '5' 
, 'testid04'
, 'managerid02'
, TO_DATE(20220611,'RRRRMMDD')
, '불평사항이 있습니다^^'
, ' 저는 운동하고 출근하는 직장인입니다.
샤워 후 화장은 필수인데...
"화장을 하기 위한 마스크 벗는것 금지"는 말이 좀 안됍니다.
그 말 때문에 솔직히 화장하면서 얼마나 눈치가 보이는지 모릅니다.
 현실에 맞게 유연하게 했으면 합니다.'
, 'Y'
, '안녕하세요. 너나들이입니다.

말씀하신 펫말은 현재 제거하였으며 이용에 불편을 드린점 사과드립니다.

기타 다른 문의사항이 있으시거나 궁금하신 점이 있으시면 언제든지

너나들이중랑으로 문의하여 주시면 친절히 답변하여 드리겠습니다.'
, 'N'
, DEFAULT
);

INSERT
  INTO TBL_POST_COMPLAIN
VALUES
(
  SEQ_COMPLAIN_POST_NUM.NEXTVAL
, '4' 
, 'testid03'
, 'managerid05'
, TO_DATE(20220612,'RRRRMMDD')
, '수영강사님...'
, ' 수영강사님이 ~ 다른 회원님들은 지도하면서 나만 알아서 하라는건지 외톨이 로 이건 운동 이 아니라 스트레스 받아
재 등록 취소하려 합니다 가르쳐 주지도 않고 어떤동작을 했다면 잡아 줘야 하는데 수영 첨인 제에게 수영에 그런 동작은 없단 말만 던지고 지도도 안해주니... 더 당황스럽고 해서 ~~혹 다른 분도 저 처럼 상처 받지 않도록 지도 바랍니다.'
, 'Y'
, '안녕하세요. 너나들이입니다.
먼저 시설이용에 감사와 강습 중 불편함을 드린점 사과 말씀 드립니다.
회원님의 수강시간대 초급반 담당강사와 오늘 면담을 진행했으며, 처음 수영을 접하시는 회원분들의 강습인만큼 보다 세심한 지도를 제공할 것과 직무교육, 친절교육 등을 실시하였습니다.
거리두리가 완화되고 회원이 증가하면서 같은 수준의 강습을 받는 회원분들 중에도 영법 습득의 차이가 발생하여 개개인별 맞춤지도에 회원분들의 100% 만족을 드리긴 어려운 여건있으나, 
담당강사를 비롯하여 모든 직원들이 앞으로 보다 만족을 드릴 수 있는 강습이 될 수 있도록 더욱 노력하겠습니다. 감사합니다.'
, 'N'
, DEFAULT
);

----------------------------------------------------

INSERT
  INTO TBL_POST_ADMIRE
VALUES
(
  SEQ_ADMIRE_POST_NUM.NEXTVAL
, '4'
, 'testid01'
,  TO_DATE(20220601, 'RRRRMMDD')
, '데스크직원분 칭찬합니다!'
, '처음 센터에 방문해서 시설이 뭐가 있는지 모르는데 친절하게 설명을 해주시고 안내를 해주시더라구요! 정말 감사합니다!
덕분에 강좌 신청접수도 잘하고 가네요~~'
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_ADMIRE
VALUES
(
  SEQ_ADMIRE_POST_NUM.NEXTVAL
, '1'
, 'testid02'
,  TO_DATE(20220605, 'RRRRMMDD')
, '플로이스트 강사분 강좌가 너무 좋아요 칭찬합니다'
, '밖에서 듣는 수업보다 훨씬 좋아요~ 문화센터 강의여서 대충 알려주겠거니 했는데 선생님이 정말 성실하게 알려주시네요
강의 추천합니다!'
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_ADMIRE
VALUES
(
  SEQ_ADMIRE_POST_NUM.NEXTVAL
, '2'
, 'testid03'
,  TO_DATE(20220610, 'RRRRMMDD')
, '클라이밍 강좌 추천'
, '문화센터 클라이밍 강좌는 어떨까? 궁금해서 신청을 하게 되었는데 정말 흥미롭고 재미있네요 다음달에도 신청 해야겠습니다. 강좌 추천해요~~'
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_ADMIRE
VALUES
(
  SEQ_ADMIRE_POST_NUM.NEXTVAL
, '3'
, 'testid04'
,  TO_DATE(20220615, 'RRRRMMDD')
, '소회의실 너무 깨끗하네요'
, '대관을 했는데 깨끗해서 깜짝놀랐습니다. 청소를 정말 열심히 하신거같아요. 먼지도 없고 깨끗하고 깔끔하네요ㅎㅎ
앞으로도 좋은 관리 부탁드립니다!'
, 'Y'
, DEFAULT
);


INSERT
  INTO TBL_POST_ADMIRE
VALUES
(
  SEQ_ADMIRE_POST_NUM.NEXTVAL
, '5'
, 'testid05'
,  TO_DATE(20220609, 'RRRRMMDD')
, '소독하시는분 칭찬해요! '
, '소독하시는분 칭찬해요! 아침7부터 남자 탈의실 소독하시는분 칭찬합니다. 코로나에 대비하여 엄청 꼼꼼히 소독하시는 것을 보았습니다.'
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_ADMIRE
VALUES
(
  SEQ_ADMIRE_POST_NUM.NEXTVAL
, '4'
, 'testid01'
,  TO_DATE(20220612, 'RRRRMMDD')
, '전화 받아주시는분 칭찬'
, '센터 위치가 헷갈려서 전화를 했는데 친절하게 답변을 해주셔서 잘 찾아갈수 있었습니다 감사해요~~'
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_ADMIRE
VALUES
(
  SEQ_ADMIRE_POST_NUM.NEXTVAL
, '2'
, 'testid03'
,  TO_DATE(20220610, 'RRRRMMDD')
, '새벽수영 강좌 추천'
, '지난 2022년 4월에 첫 수영을 배웠습니다. 새벽수영이여서 힘들거 같았는데 선생님께서 재미있게 가르쳐주셔서 즐겁게 수영할 수 있었습니다.'
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_ADMIRE
VALUES
(
  SEQ_ADMIRE_POST_NUM.NEXTVAL
, '3'
, 'testid04'
,  TO_DATE(20220615, 'RRRRMMDD')
, '농구장 바닥'
, '농구장 바닥 너무 깨끗하게 관리가 잘 되어있네요 덕분에 강의 잘 듣고있습니다. 앞으로도 좋은 관리 부탁드려요~'
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_ADMIRE
VALUES
(
  SEQ_ADMIRE_POST_NUM.NEXTVAL
, '1'
, 'testid02'
,  TO_DATE(20220605, 'RRRRMMDD')
, '피아노수업 강좌 추천'
, '피아노를 처음 배우는데 강좌가 너무 좋네요 선생님도 친절히 알려주셔서 좋은 취미가 생긴거 같아요 선생님 감사합니다'
, 'N'
, DEFAULT
);

INSERT
  INTO TBL_POST_ADMIRE
VALUES
(
  SEQ_ADMIRE_POST_NUM.NEXTVAL
, '5'
, 'testid05'
,  TO_DATE(20220609, 'RRRRMMDD')
, '청소 상태가 청결 하고 아주 좋아요. '
, '제가 다른 시설도 다녀봤지만 너나들이중랑처럼 청소 상태가 깨끗한 곳을 못 봤습니다.
앞으로도 깨끗하고 좋은 문화,체육시설을 만들어주세요~
관리하시는 모든 직원분들에게 감사드립니다.'
, 'Y'
, DEFAULT
);

-- 도서 종류
INSERT
  INTO TBL_BOOK_KINDS
VALUES
(
  'G1'
, '경제'  
);

INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G2'
, '에세이'  
);


INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G3'
, '자기계발'  
);


INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G4'
, '종교'  
);

INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G5'
, '자연과학'  
);


INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G6'
, '예술'  
);


INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G7'
, '취미'  
);

INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G8'
, '어린이'  
);

INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G9'
, '역사'  
);

INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G10'
, '잡지'  
);

-- 도서 테이블
INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G1'
, '경제야 놀자'
, '김경제'
, 'A1'
, 654879
, 'Y'
, '한빗'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G1'
, '쉽게배우는 경제'
, '김경제'
, 'A1'
, 789979
, 'Y'
, '한빗'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G2'
, '제주도 한달살이'
, '이재주'
, 'A2'
, 579891
, 'Y'
, '이세에'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G2'
, '나는 나다'
, '박주영'
, 'A2'
, 465978
, 'Y'
, '이세에'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G3'
, '재테크 고수의길'
, '이길'
, 'A3'
, 482314
, 'Y'
, '발계'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G3'
, '놀고 싶다'
, '이승우'
, 'A3'
, 887941
, 'Y'
, '발계'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G4'
, '스님의 길'
, '혜민'
, 'A4'
, 759153
, 'Y'
, '종교나라'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G4'
, '예수 그리스도'
, '문목사'
, 'A4'
, 332644
, 'Y'
, '종교나라'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G5'
, '지구의 공전 주기'
, '지이구'
, 'A5'
, 369369
, 'Y'
, '과학나라'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G5'
, '블랙홀의 원리'
, '위르겐 클롭'
, 'A5'
, 220025
, 'Y'
, '과학나라'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G6'
, '쉽게 배우는 보색의 원리'
, '문홍식'
, 'A6'
, 789885
, 'Y'
, '예술당'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G6'
, '원근법의 이해'
, '정원근'
, 'A6'
, 654134
, 'Y'
, '예술당'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G7'
, '재밌는 종이접기'
, '김영만'
, 'A7'
, 454879
, 'Y'
, '산토끼'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G7'
, '자취 요리 백과사전'
, '엄용백'
, 'A7'
, 642727
, 'Y'
, '산토끼'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G8'
, '내 토마토를 누가 가져갔을까'
, '시오 월콧'
, 'A8'
, 795415
, 'Y'
, '동심지킴이'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G8'
, '옷이 작아졌어요!'
, '프란시스 은가누'
, 'A8'
, 654833
, 'Y'
, '동심지킴이'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G9'
, '백제성의 함락'
, '차두리'
, 'A9'
, 637778
, 'Y'
, '고구려'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G9'
, '통인 신라와 당나라'
, '홍명보'
, 'A9'
, 894848
, 'Y'
, '고구려'
);


INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G10'
, 'MZ 세대가 좋아하는 브랜드는?'
, '우영미'
, 'A10'
, 112433
, 'Y'
, '민들레'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G10'
, '미니멀 인테리어'
, '엘링 홀란드'
, 'A10'
, 836207
, 'Y'
, '민들레'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,1
, 'testid01'
, TO_DATE(20220602,'RRRRMMDD')
, TO_DATE(20220605,'RRRRMMDD')
, 'N'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,18
, 'testid01'
, TO_DATE(20220602,'RRRRMMDD')
, TO_DATE(20220605,'RRRRMMDD')
, 'N'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,3
, 'testid01'
, TO_DATE(20220602,'RRRRMMDD')
, TO_DATE(20220605,'RRRRMMDD')
, 'N'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,17
, 'testid02'
, TO_DATE(20220602,'RRRRMMDD')
, TO_DATE(20220612,'RRRRMMDD')
, 'Y'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,5
, 'testid02'
, TO_DATE(20220602,'RRRRMMDD')
, TO_DATE(20220605,'RRRRMMDD')
, 'N'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,16
, 'testid02'
, TO_DATE(20220605,'RRRRMMDD')
, TO_DATE(20220610,'RRRRMMDD')
, 'N'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,15
, 'testid03'
, TO_DATE(20220601,'RRRRMMDD')
, TO_DATE(20220612,'RRRRMMDD')
, 'Y'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,9
, 'testid03'
, TO_DATE(20220501,'RRRRMMDD')
, TO_DATE(20220505,'RRRRMMDD')
, 'N'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,14
, 'testid04'
, TO_DATE(20220615,'RRRRMMDD')
, TO_DATE(20220618,'RRRRMMDD')
, 'Y'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,11
, 'testid04'
, TO_DATE(20220615,'RRRRMMDD')
, TO_DATE(20220618,'RRRRMMDD')
, 'Y'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,12
, 'testid04'
, TO_DATE(20220620,'RRRRMMDD')
, TO_DATE(20220622,'RRRRMMDD')
, 'Y'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,13
, 'testid05'
, TO_DATE(20220618,'RRRRMMDD')
, TO_DATE(20220619,'RRRRMMDD')
, 'Y'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,13
, 'testid05'
, TO_DATE(20220619,'RRRRMMDD')
, TO_DATE(20220623,'RRRRMMDD')
, 'Y'
);

INSERT INTO 
  TBL_BOOK_RENT
VALUES
(
SEQ_BOOK_RENT_NUM.NEXTVAL
,20
, 'testid05'
, TO_DATE(20220623,'RRRRMMDD')
, TO_DATE(20220626,'RRRRMMDD')
, 'Y'
);

INSERT INTO
  TBL_CLASS_PAYMENT
VALUES
('testid01'
, 1
, 30000
, TO_DATE(20220605,'RRRRMMDD')
,'Y'
,'계좌이체'
);

INSERT INTO
  TBL_CLASS_PAYMENT
VALUES
('testid01'
, 10
, 50000
, TO_DATE(20220610,'RRRRMMDD')
,'Y'
,'계좌이체'
);

INSERT INTO
  TBL_CLASS_PAYMENT
VALUES
('testid02'
, 28
, 50000
, TO_DATE(20220531,'RRRRMMDD')
,'Y'
,'계좌이체'
);

INSERT INTO
  TBL_CLASS_PAYMENT
VALUES
('testid02'
, 29
, 30000
,TO_DATE(20220531,'RRRRMMDD')
,'N'
,'계좌이체'
);

INSERT INTO
  TBL_CLASS_PAYMENT
VALUES
('testid03'
, 30
, 80000
,TO_DATE(20220601,'RRRRMMDD')
,'N'
,'계좌이체'
);

INSERT INTO
  TBL_CLASS_PAYMENT
VALUES
('testid03'
, 33
, 30000
,TO_DATE(20220601,'RRRRMMDD')
,'N'
,'계좌이체'
);

INSERT INTO
  TBL_CLASS_PAYMENT
VALUES
('testid04'
, 41
, 5000
,TO_DATE(20220530,'RRRRMMDD')
,'N'
,'계좌이체'
);

INSERT INTO
  TBL_CLASS_PAYMENT
VALUES
('testid04'
, 42
, 5000
,TO_DATE(20220530,'RRRRMMDD')
,'N'
,'계좌이체'
);

INSERT INTO
  TBL_CLASS_PAYMENT
VALUES
('testid04'
, 43
, 5000
,TO_DATE(20220530,'RRRRMMDD')
,'N'
,'계좌이체'
);

INSERT INTO
  TBL_CLASS_PAYMENT
VALUES
('testid05'
, 23
, 10000
,TO_DATE(20220630,'RRRRMMDD')
,'N'
,'계좌이체'
);

INSERT INTO
  TBL_CLASS_PAYMENT
VALUES
('testid05'
, 9
, 60000
,TO_DATE(20220630,'RRRRMMDD')
,'N'
,'계좌이체'
);


INSERT 
  INTO TBL_CLASS_MEMBER
VALUES
(
  'testid01'
, 1
, 'N'
);

INSERT 
  INTO TBL_CLASS_MEMBER
VALUES
(
  'testid02'
, 2
, 'Y'
);

INSERT 
  INTO TBL_CLASS_MEMBER
VALUES
(
  'testid03'
, 3
, 'Y'
);


INSERT INTO
  TBL_RENT_REQUEST
VALUES
(
SEQ_RENT_REQUEST_NUM.NEXTVAL
, '304'
, 'managerid01'
, 'testid01'
, 'Y'	
, '50000'
, 'Y'
, 'N'
, TO_DATE(20220605,'RRRRMMDD')
, TO_DATE(20220606,'RRRRMMDD')
);

INSERT INTO
  TBL_RENT_REQUEST
VALUES
(
SEQ_RENT_REQUEST_NUM.NEXTVAL
, '305'
, 'managerid02'
, 'testid03'
, 'Y'	
, '80000'
, 'Y'
, 'N'
, TO_DATE(20220613,'RRRRMMDD')
, TO_DATE(20220614,'RRRRMMDD')
);

INSERT INTO
  TBL_RENT_REQUEST
VALUES
(
SEQ_RENT_REQUEST_NUM.NEXTVAL
, '308'
, 'managerid03'
, 'testid04'
, 'Y'	
, '70000'
, 'Y'
, 'N'
, TO_DATE(20220506,'RRRRMMDD')
, TO_DATE(20220508,'RRRRMMDD')
);

INSERT INTO
  TBL_RENT_REQUEST
VALUES
(
SEQ_RENT_REQUEST_NUM.NEXTVAL
, '401'
, 'managerid04'
, 'testid05'
, 'Y'	
, '150000'
, 'Y'
, 'N'
, TO_DATE(20220629,'RRRRMMDD')
, TO_DATE(20220630,'RRRRMMDD')
);

INSERT INTO
  TBL_RENT_REQUEST
VALUES
(
SEQ_RENT_REQUEST_NUM.NEXTVAL
, '404'
, 'managerid05'
, 'testid01'
, 'N'	
, '50000'
, 'N'
, 'Y'
, TO_DATE(20220629,'RRRRMMDD')
, TO_DATE(20220630,'RRRRMMDD')
);

INSERT INTO
  TBL_RENT_REQUEST
VALUES
(
SEQ_RENT_REQUEST_NUM.NEXTVAL
, '302'
, 'managerid04'
, 'testid01'
, 'Y'	
, '80000'
, 'Y'
, 'N'
, TO_DATE(20220701,'RRRRMMDD')
, TO_DATE(20220730,'RRRRMMDD')
);

commit;