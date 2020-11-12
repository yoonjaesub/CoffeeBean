package teamProject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class MemberDAO {
	
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory; //DataSource Ŭ�����κ��� ��ü ����
	
	public MemberDAO() {
		try {
			Context ctx = new InitialContext(); // ���ؽ�Ʈ ���� �ҷ��� ��ü ����
			Context envContext = (Context) ctx.lookup("java:/comp/env"); //����̹����� �ε�
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle"); //�������� �ε�
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String m_id, String m_pwd) {
		String query = "select password from mem where id = ?";
		try {
			Connection con = dataFactory.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m_id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(m_pwd)) {
					return 1;
				} else {
					return 0;
				}
			}
			return -1;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	
	public List listMembers() {
		List list = new ArrayList();
		try {
			con = dataFactory.getConnection(); //���ؽ�Ʈ�� ���� ����
			String query = "select * from mem order by name asc";
			System.out.println("������ �˻� ���� : "+query);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String PhoneNum = rs.getString("phoneNum");
				MemberBean bean = new MemberBean();
				bean.setId(id);
				bean.setPwd(pwd);
				bean.setName(name);
				bean.setEmail(email);
				bean.setPhoneNum(PhoneNum);
				list.add(bean);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(Exception e) {
			System.out.println("������ �˻��� �����Ͽ����ϴ�.");
			e.printStackTrace();
		}
		return list;
	}
	
	public List getMemInfo(String id) {
		List list = new ArrayList();
		try {
			con = dataFactory.getConnection(); //���ؽ�Ʈ�� ���� ����
			String query = "select * from mem where id=?";
			System.out.println("������ �˻� ���� : "+query);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String m_id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String PhoneNum = rs.getString("phoneNum");
				MemberBean bean = new MemberBean();
				bean.setId(m_id);
				bean.setPwd(pwd);
				bean.setName(name);
				bean.setEmail(email);
				bean.setPhoneNum(PhoneNum);
				list.add(bean);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(Exception e) {
			System.out.println("������ �˻��� �����Ͽ����ϴ�.");
			e.printStackTrace();
		}
		return list;
	}
	
	public int addMember(MemberBean memberBean) {
		try {
			Connection con = dataFactory.getConnection();
			String id = memberBean.getId();
			String pwd = memberBean.getPwd();
			String name = memberBean.getName();
			String email = memberBean.getEmail();
			String phoneNum = memberBean.getPhoneNum();
			String query = "insert into mem values(?, ?, ?, ?, ?)";
			System.out.println("������ �Է¹� : "+query);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, email);
			pstmt.setString(4, phoneNum);
			pstmt.setString(5, pwd);
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
		return 1;
	}
	
	public List getInfo(String mem_id) {
		List list = new ArrayList();
		try {
			Connection con = dataFactory.getConnection();
			String query = "select * from mem where id=?";
			pstmt.setString(1, mem_id);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
			String m_id = rs.getString("id");
			String pwd = rs.getString("pwd");
			String name = rs.getString("name");
			String email = rs.getString("email");
			String PhoneNum = rs.getString("phoneNum");
			MemberBean bean = new MemberBean();
			bean.setId(m_id);
			bean.setPwd(pwd);
			bean.setName(name);
			bean.setEmail(email);
			bean.setPhoneNum(PhoneNum);
			list.add(bean);
			}
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public void editMember(MemberBean bean){
		try {
			Connection con = dataFactory.getConnection();
			String id = bean.getId();
			String pwd = bean.getPwd();
			String name = bean.getName();
			String email = bean.getEmail();
			String phoneNum = bean.getPhoneNum();
 			String query = "update mem set password=?, name=?, email=?, phonenum=? where id=?";
 			System.out.println("������ �Է¹� : "+query);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, pwd);
			pstmt.setString(2, name);
			pstmt.setString(3, email);
			pstmt.setString(4, phoneNum);
			pstmt.setString(5, id);
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int deleteMember(String id, String pwd) {
		String m_pwd = "";
		int x = -1;
		try {
		String query1 = "select password from mem where id=?";
		String query2 = "delete from mem where id=?";
		
		pstmt = con.prepareStatement(query1);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			m_pwd = rs.getString("pwd");
			if(m_pwd.equals(pwd)) {
				pstmt = con.prepareStatement(query2);
				pstmt.setString(1, id);
				pstmt.executeUpdate();
				x=1;
			} else {
				x= 0;
			}
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}

}
