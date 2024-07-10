package com.care.project.member;

import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.http.HttpSession;

@Service
public class KakaoService {
	private String accessToken;
	@Autowired private IMemberMapper mapper;
	@Autowired private HttpSession session;
	/*
	 * 카카오 개발자센터 문서
	 https://developers.kakao.com/docs/latest/ko/kakaologin/rest-api#request-token
	 */
	public void getAccessToken(String code) {
		String reqUrl = "https://kauth.kakao.com/oauth/token";
		String reqParam = "grant_type=authorization_code";
		reqParam += "&client_id=40127d7faf35926c38b930d913c0e64f";
		reqParam += "&redirect_uri=http://localhost/kakaoLogin";
		reqParam += "&code="+code;
	
		try {
			URL url = new URL(reqUrl); // POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		
			conn.setRequestMethod("POST"); // POST 요청을 위해 기본값 false에서 setDoOutput을 true로 변경
			conn.setDoOutput(true); // POST 메소드를 이용해서 데이터를 전달하기 위한 설정
			// 기본 outputStream을 통해 문자열로 처리할 수 있는
			// OutPutStreamWriter 변환 후 처리속도를 빠르게 하기위한
			// BufferedWriter로 변환해서 사용한다.
			BufferedWriter bw = new BufferedWriter(
					new OutputStreamWriter(conn.getOutputStream())
					);
			bw.write(reqParam);
			bw.flush();
			
			// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			InputStreamReader isr = new InputStreamReader(conn.getInputStream());
			ObjectMapper om = new ObjectMapper();
			Map<String, String> map = om.readValue(isr, new TypeReference<Map<String, String>>() {});
			accessToken = map.get("access_token");
			
			System.out.println("accessToken : " + map.get("access_token"));
			System.out.println(map);
			/*
			{
				access_token=ZpwWZKvFkNsnzczGy27sLJLife5weMqEIS1Md2PHCiolTgAAAYsDuywa,
				token_type=bearer,
				refresh_token=UMtPpXdLGcp2S19be-PzKXvtKn9S-ZNTUYPZa1ftCiolTgAAAYsDuywZ, 
				expires_in=21599, 
				scope=age_range birthday account_email profile_image gender profile_nickname, 
				refresh_token_expires_in=5183999
			}
			 */
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	public void getUserInfo(MemberDTO member,Model model) {
		String reqUrl = "https://kapi.kakao.com/v2/user/me";
		
	//	Authorization: Bearer ${ACCESS_TOKEN}
	
		try {
			URL url = new URL(reqUrl); 
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "Bearer "+accessToken);
			
			int responseCode = conn.getResponseCode(); // 결과 코드가 200이라면 성공
			System.out.println("responseCode : " + responseCode);
			
			ObjectMapper om = new ObjectMapper();
			JsonNode jsonNode = om.readTree(conn.getInputStream());
			System.out.println(jsonNode.get("kakao_account"));
			
			session.setAttribute("userId", jsonNode.get("id"));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			member.setJoinDate(sdf.format(new Date()));
			String email = null;
			String userId = jsonNode.get("id").asText();
			String userName = jsonNode.get("kakao_account").get("profile").get("nickname").asText();
			
			if(jsonNode.get("kakao_account").get("email_needs_agreement").asText() == "false") {
				email = jsonNode.get("kakao_account").get("email").asText();
				session.setAttribute("email", email);
			}
			if(mapper.login(userId)==null) {
				member.setUserId(userId);
				member.setUserName(userName);
				member.setEmail(email);
				mapper.certificationKakao(member);
			} else if (mapper.login(userId)!=null){
				MemberDTO check = mapper.login(userId);
				session.setAttribute("userId",userId);
				session.setAttribute("userName",userName);
				session.setAttribute("birth",check.getBirth());
				session.setAttribute("email",check.getEmail());
				session.setAttribute("mobile",check.getMobile());
				session.setAttribute("address",check.getAddress());
				session.setAttribute("joinDate",check.getJoinDate());	
			}
				
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public void unlink(MemberDTO member) {
		String reqUrl = "https://kapi.kakao.com/v1/user/unlink";
		
		try {
			URL url = new URL(reqUrl); 
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "Bearer "+accessToken);
			
			int responseCode = conn.getResponseCode(); // 결과 코드가 200이라면 성공
			System.out.println("responseCode : " + responseCode);
			
			ObjectMapper om = new ObjectMapper();
			JsonNode jsonNode = om.readTree(conn.getInputStream());
			System.out.println(jsonNode.get("id"));
			System.out.println(member.getUserId());
			mapper.deleteProc(member.getUserId());

		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void logout(MemberDTO member) {
		String reqUrl = "https://kapi.kakao.com/v1/user/logout";
		
		try {
			URL url = new URL(reqUrl); 
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "Bearer "+accessToken);
			
			int responseCode = conn.getResponseCode(); // 결과 코드가 200이라면 성공
			System.out.println("responseCode : " + responseCode);
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
















