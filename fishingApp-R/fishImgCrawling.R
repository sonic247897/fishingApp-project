library("stringr")

# URL����
myv <- c(1:119)
myv


for(i in myv){
  urlF <-  paste("http://www.nifs.go.kr/frcenter/species/?curPage=",i,"&order=asc&mf_psc_cd=&new_input=no&keyword=&mf_l_cls_cd=&mf_m_cls_cd=&mf_s_cls_cd=&mf_dogam_id=&sort_by=mf_kor_name", sep="")
  url_dataF <- readLines(urlF, encoding = "UTF-8")
  url_dataF
  
  #### ������ ���͸�: image_.*download.jsp? ####
  # 1. str_detect(������ �˻��� ���ڿ�, ����)�� �̿��ؼ� �������� ��ü���� �ʿ��� �����͸� ���� ���� -> TRUE�� FALSE�� ����
  # Ŭ���������� �̱�
  filter_dataF <- url_dataF[str_detect(url_dataF, "image_.*download.jsp?")] #TRUE�� FALSE�� ��Ÿ���� ������� �迭�� ������ TRUE�� ���Ҹ� ��µȴ�
  filter_dataF
  
  # 2. ������ ������ ��ü���� ���� �ʿ��� ���ڿ��� ����
  # str_extract -> ���Ͽ� ��ġ�ϴ� ���ڿ��� ����
  # �Ĺ�, ���� Ž�� ���� ǥ����
  titleF <- str_extract(filter_dataF, "(?<=\\\").*(?=\\\")")
  titleF <- paste("http://www.nifs.go.kr",titleF, sep = "")
  titleF
  
  # URL ����
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