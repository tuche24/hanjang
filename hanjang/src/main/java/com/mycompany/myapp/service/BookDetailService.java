package com.mycompany.myapp.service;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

@Service // Detail 요소 크롤링 서비스
public class BookDetailService {

	public String getCrawlingUrl(String title) throws IOException {
		
		String crawlingUrl = "https://www.aladin.co.kr/search/wsearchresult.aspx?SearchTarget=All&SearchWord="+title+"&x=0&y=0";
		
		Document doc = Jsoup.connect(crawlingUrl).get();
		Elements elem = doc.select(".bo3");
		
		String result = elem.attr("href");
		System.out.println(result);
		
		return result;
	}
	
	public String executeCrawling(String url) throws IOException {
		
		Document doc = Jsoup.connect(url).get();
		Elements elem = doc.select(".Ere_prod_mconts_R");
		
		System.out.println(elem.size());
		String result = elem.get(1).text(); // 책 설명 부분이 안 들어옴
		System.out.println(result);
		
		return result;
	}
	
}
