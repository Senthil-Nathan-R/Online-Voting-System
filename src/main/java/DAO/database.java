package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class database {
	private final static String url = "jdbc:mysql://localhost:3306/vote";
	private final static String username = "root";
	private final static String passwords = "1811";
	
	//UPDATING DATA (FORGET PASSWORD)
	public boolean Reset(String email,String password){
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,username,passwords);
		String query="update users set password=? where email=?;";
		PreparedStatement pst=con.prepareStatement(query);
		pst.setString(1, password);
		pst.setString(2, email);
		int row=pst.executeUpdate();
		{
			if(row>0) {
				return true;
			}
		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//ADD ELECTION DATA 
	public boolean addElection(String id, String name, String detail, String sdate, String edate){
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, passwords);
			String query = "INSERT INTO election (election_id, electionName, election_detail, startDate, endDate) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, id);
			pst.setString(2, name);
			pst.setString(3, detail);
			pst.setString(4, sdate);
			pst.setString(5, edate);
			int row = pst.executeUpdate();
			
			return row > 0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//ADD CANDIDATE DATA 
		public boolean addCandidate(String id, String name, String party ,String cid){
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection(url, username, passwords);
				String query = "INSERT INTO candidate VALUES (?,?, ?, ?)";
				PreparedStatement pst = con.prepareStatement(query);
				pst.setString(1, cid);
				pst.setString(2, id);
				pst.setString(3, name);
				pst.setString(4, party);

				int row = pst.executeUpdate();
				
				return row > 0;
			} catch (Exception e) {
				System.out.print("error");
			}
			return false;
		}
		
		//EDIT ELECTION DATA
		public boolean editElection(String id, String name, String detail, String sdate, String edate){
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection(url, username, passwords);
				String query = "update election set electionName=?,election_detail=?,startDate=?,endDate=? where election_id=?;";
				PreparedStatement pst = con.prepareStatement(query);
				pst.setString(5, id);
				pst.setString(1, name);
				pst.setString(2, detail);
				pst.setString(3, sdate);
				pst.setString(4, edate);
				int row = pst.executeUpdate();
				
				return row > 0;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		
		//EDIT CANDIDATE DATA 
				public boolean editCandidate(String id, String cid, String name, String party){
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection(url, username, passwords);
						String query = "update candidate set candidateName=?, partyName=? where candidate_id=? and election_id=? ";
						PreparedStatement pst = con.prepareStatement(query);
						pst.setString(1, name);
						pst.setString(2, party);
						pst.setString(3, cid);
						pst.setString(4, id);

						int row = pst.executeUpdate();
						
						return row > 0;
					} catch (Exception e) {
						System.out.print("error");
					}
					return false;
				}
				
				//DELETE ELECTION DATA
				public boolean deleteElection(String id){
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection(url, username, passwords);
						String query = "delete from election where election_id=?;";
						PreparedStatement pst = con.prepareStatement(query);
						pst.setString(1, id);
						int row = pst.executeUpdate();
						
						return row > 0;
					} catch (Exception e) {
						e.printStackTrace();
					}
					return false;
				}
				
				//DELETE ELECTION DATA
				public boolean deleteCandidate(String id,String cid){
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection(url, username, passwords);
						String query = "delete from candidate where election_id=? and candidate_id=?;";
						PreparedStatement pst = con.prepareStatement(query);
						pst.setString(1, id);
						pst.setString(2, cid);
						int row = pst.executeUpdate();
						
						return row > 0;
					} catch (Exception e) {
						e.printStackTrace();
					}
					return false;
				}
				
				//VOTING 
				public boolean voting(String id, String party, String voter){
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection(url, username, passwords);
						con.setAutoCommit(false);
						String query = "INSERT INTO voting (election_id, partyName) VALUES (?, ?)";
						String query1 = "INSERT INTO voting_user (election_id, voter_id) VALUES (?, ?)";
						PreparedStatement pst = con.prepareStatement(query);
						pst.setString(1, id);
						pst.setString(2, party);
						PreparedStatement pst1 = con.prepareStatement(query1);
						pst1.setString(1, id);
						pst1.setString(2, voter);
						
						int row = pst.executeUpdate();
						int row1=pst1.executeUpdate();
						
						while(row>0 && row1>0) {
				    		con.commit();
				    	
				    	    return true;    
				    }
					} catch (Exception e) {
						System.out.print("error");
					}
					return false;
				}
				//Voting verification
				public boolean Verification(String id,String voterid){
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection(url, username, passwords);
						String query = "select * from voting_user where election_id=? and voter_id=?;";
						PreparedStatement pst = con.prepareStatement(query);
						pst.setString(1, id);
						pst.setString(2, voterid);
						ResultSet rst=pst.executeQuery();
						while(rst.next()) {
							return true;
						}
						
						
					} catch (Exception e) {
						e.printStackTrace();
					}
					return false;
				}
				
				//USER
				public boolean addUser(String name,String dob,String gender,String email,String phn,String address,String voter_id,String aadhaar,String uname,String password,String terms){
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection(url, username, passwords);
						String query = "INSERT INTO users VALUES (?, ?, ?,?,?,?,?,?,?,?,?)";
						PreparedStatement pst = con.prepareStatement(query);
						pst.setString(1, name);
						pst.setString(2, dob);
						pst.setString(3, gender);
						pst.setString(4, email);
						pst.setString(5, phn);
						pst.setString(6, address);
						pst.setString(7, voter_id);
						pst.setString(8, aadhaar);
						pst.setString(9, uname);
						pst.setString(10, password);
						pst.setString(11, terms);
						

						int row = pst.executeUpdate();
						
						return row > 0;
					} catch (Exception e) {
						System.out.print("error");
					}
					return false;
				}
				
				//Signin
				public boolean Signin(String uname, String password) {
				    try {
				        Class.forName("com.mysql.cj.jdbc.Driver");
				        Connection con = DriverManager.getConnection(url, username, passwords);
				        String query = "SELECT * FROM users WHERE username=? AND password=?;";
				        PreparedStatement pst = con.prepareStatement(query);
				        pst.setString(1, uname);
				        pst.setString(2, password);
				        ResultSet rs = pst.executeQuery();
				        
				        while (rs.next()) {
				        	
				            return true;
				        }

				    } catch (Exception e) {
				        e.printStackTrace();
				    }
				    return false;
				}

				//CHECK VOTERID
				public boolean checkvoter(String voter_id , String aadhaar) {
					try {
			            Class.forName("com.mysql.jdbc.Driver");
			            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vote", "root", "1811");
			            PreparedStatement pst = con.prepareStatement("select * from users where voterid=? and aadhar=?;");
			            pst.setString(1, voter_id);
			            pst.setString(2, aadhaar);
			            ResultSet rs = pst.executeQuery();

			            while (rs.next()) {			              
			               return true;
			            } 
			        } catch (Exception e) {
			            e.printStackTrace();
			            
			        }
					return false;
				}
//				//check 
//				public boolean checkuser(String voter_id , String id) {
//					try {
//			            Class.forName("com.mysql.jdbc.Driver");
//			            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vote", "root", "1811");
//			            PreparedStatement pst = con.prepareStatement("select * from voting_user where voterid=? and election_id=?;");
//			            pst.setString(1, voter_id);
//			            pst.setString(2, id);
//			            ResultSet rs = pst.executeQuery();
//
//			            while (rs.next()) {			              
//			               return false;
//			            } 
//			        } catch (Exception e) {
//			            e.printStackTrace();
//			            
//			        }
//					return true;
//				}
		
}