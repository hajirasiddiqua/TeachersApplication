package com.crud.bean;
import java.util.Date;

	

	

public class TeacherBean {
		
	
	    private int id;
	    private String fName;
	    private String lName;
	    private Date dob;
	    private String num;
	    private String email;
	    private String sex;
	    private String address;
	    private String post;
		private String qualification;
		
		
		/**
		 * @return the qualification
		 */
		public String getQualification() {
			return qualification;
		}


		/**
		 * @param qualification the qualification to set
		 */
		public void setQualification(String qualification) {
			this.qualification = qualification;
		}


		/**
		 * @return the post
		 */
		public String getPost() {
			return post;
		}


		/**
		 * @param post the post to set
		 */
		public void setPost(String post) {
			this.post = post;
		}


		/**
		

		/**
		 * @return the address
		 */
		
		public String getAddress() {
			return address;
		}


		/**
		 * @return the post
		 */
		

		/**
		 * @param address the address to set
		 */
		public void setAddress(String address) {
			this.address = address;
		}


		/**
		 * @return the email
		 */
		public String getEmail() {
			return email;
		}
		
		
		/**
		 * @param email the email to set
		 */
		public void setEmail(String email) {
			this.email = email;
		}
		/**
		 * @return the sex
		 */
		public String getSex() {
			return sex;
		}

		/**
		 * @param sex the sex to set
		 */
		public void setSex(String sex) {
			this.sex = sex;
		}

		/**
		 * @return the dob
		 */
		public Date getDob() {
			return dob;
		}
		
	
		 
		public void setDob(Date dob) {
			this.dob = dob;
		}
		
		public String getNum() {
			return num;
		}


		public void setNum(String num) {
			this.num = num;
		}


	  
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getfName() {
			return fName;
		}
		public void setfName(String fName) {
			this.fName = fName;
		}
		public String getlName() {
			return lName;
		}
		public void setlName(String lName) {
			this.lName = lName;
		}
		@Override
		public String toString() {
			return "TeacherBean [id=" + id + ", fName=" + fName + ", lName=" + lName
					+ "]";
		}
		
		
	}

