package com.project;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;



public class Dao {
	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int save(Beans p){ 
		
	    String sql="insert into student_record(name,class_year,branch,prn,mob_no,email,address,cgpa,organization_name,internship_start_date,internship_end_date,internship_duration,internship_organization_level,internship_mode,nature,internship_external_internal) values('"+p.getName()+"','"+p.getYear()+"','"+p.getBranch()+"','"+p.getPrn()+"','"+p.getMobNo()+"','"+p.getEmail()+"','"+p.getAddress()+"','"+p.getCgpa()+"','"+p.getOrganizationName()+"','"+p.getInternshipStartDate()+"','"+p.getInternshipEndDate()+"','"+p.getInternshipDuration()+"','"+p.getInternshipOrganizationLevel()+"','"+p.getInternshipMode()+"','"+p.getNature()+"','"+p.getInternshipExternalInternal()+"')";    
	   
	    return template.update(sql);    
	}    
	public int update(Beans p,int id){    
	    String sql="update student_record set name='"+p.getName()+"',class_year='"+p.getYear()+"',branch='"+p.getBranch()+"',prn='"+p.getPrn()+"',mob_no='"+p.getMobNo()+"',email='"+p.getEmail()+"',address='"+p.getAddress()+"',cgpa='"+p.getCgpa()+"',organization_name='"+p.getOrganizationName()+"',internship_start_date='"+p.getInternshipStartDate()+"',internship_end_date='"+p.getInternshipEndDate()+"',internship_duration='"+p.getInternshipDuration()+"',internship_organization_level='"+p.getInternshipOrganizationLevel()+"',internship_mode='"+p.getInternshipMode()+"',internship_external_internal='"+p.getInternshipExternalInternal()+"',nature='"+p.getNature()+"' where id="+id+";"; 
	    System.out.println("Employee bean Id="+id);
	    return template.update(sql);    
	}    
	public int delete(int id){    
	    String sql="delete from student_record where id="+id+"";    
	    return template.update(sql);    
	}    
	public Beans getEmpById(int id){    
	    String sql="select * from student_record where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Beans>(Beans.class));    
	}    
	public List<Beans> getAllStudents(){    
	    return template.query("select * from student_record",new RowMapper<Beans>(){    
	        public Beans mapRow(ResultSet rs, int row) throws SQLException {    
	            Beans e=new Beans(); 
               
	            e.setId(rs.getInt(1));    
	            e.setName(rs.getString(2));
	            e.setYear(rs.getString(3));
	            e.setPrn(rs.getString(4));
	            e.setMobNo(rs.getString(5));
	            e.setEmail(rs.getString(6));
	            e.setCgpa(rs.getString(7));	         
	            e.setOrganizationName(rs.getString(8));
	            e.setInternshipStartDate(rs.getString(9));
	            e.setInternshipEndDate(rs.getString(10));
	           
	            e.setInternshipExternalInternal(rs.getString(11));
	            e.setInternshipDuration(rs.getString(12));
	            e.setInternshipOrganizationLevel(rs.getString(13));
	            e.setInternshipMode(rs.getString(14));
	            e.setAddress(rs.getString(15));
	            e.setBranch(rs.getString(16));
	            e.setNature(rs.getString(17));
	            
	             
	            return e;    
	        }    
	    });    
	}    
}
