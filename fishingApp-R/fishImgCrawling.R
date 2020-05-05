library("stringr")

# URL저장
myv <- c(1:119)
myv


for(i in myv){
  urlF <-  paste("http://www.nifs.go.kr/frcenter/species/?curPage=",i,"&order=asc&mf_psc_cd=&new_input=no&keyword=&mf_l_cls_cd=&mf_m_cls_cd=&mf_s_cls_cd=&mf_dogam_id=&sort_by=mf_kor_name", sep="")
  url_dataF <- readLines(urlF, encoding = "UTF-8")
  url_dataF
  
  #### 데이터 필터링: image_.*download.jsp? ####
  # 1. str_detect(패턴을 검사할 문자열, 패턴)를 이용해서 웹페이지 전체에서 필요한 데이터만 먼저 추출 -> TRUE와 FALSE를 리턴
  # 클래스명으로 뽑기
  filter_dataF <- url_dataF[str_detect(url_dataF, "image_.*download.jsp?")] #TRUE와 FALSE로 나타나는 결과값을 배열에 넣으면 TRUE인 원소만 출력된다
  filter_dataF
  
  # 2. 추출한 데이터 전체에서 내가 필요한 문자열만 추출
  # str_extract -> 패턴에 일치하는 문자열을 리턴
  # 후방, 전방 탐색 정규 표현식
  titleF <- str_extract(filter_dataF, "(?<=\\\").*(?=\\\")")
  titleF <- paste("http://www.nifs.go.kr",titleF, sep = "")
  titleF
  
  # URL 누적
  if(i==1){
    final_dataF <- cbind(titleF)
    final_dataF
  }else{
    final_tmp <- cbind(titleF)
    final_dataF <- rbind(final_dataF, final_tmp)
  }
}


write.csv(final_dataF, "fishImg_final.csv")
length(final_dataF)
