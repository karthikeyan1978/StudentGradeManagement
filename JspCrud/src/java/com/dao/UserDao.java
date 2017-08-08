/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.bean.User;

public class UserDao {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "1234");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int save(User u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    //"insert into register(name,password,email,sex,country) values(?,?,?,?,?)"); 
                    "insert into register(id,sname,tamil,english,maths,science,moral,total,average,grade) values(?,?,?,?,?,?,?,?,?,?)");
            /*ps.setString(1,u.getName());  
        ps.setString(2,u.getPassword());  
        ps.setString(3,u.getEmail());  
        ps.setString(4,u.getSex());  
        ps.setString(5,u.getCountry());  */
            ps.setInt(1, u.getId());
            ps.setString(2, u.getSname());
            ps.setInt(3, u.getTamil());
            ps.setInt(4, u.getEnglish());
            ps.setInt(5, u.getMaths());
            ps.setInt(6, u.getScience());
            ps.setInt(7, u.getMoral());
            //int total = Integer.parseInt(u.getTamil()) + Integer.parseInt(u.getEnglish()) + Integer.parseInt(u.getMaths()) + Integer.parseInt(u.getScience()) + Integer.parseInt(u.getMoral());
            int total = u.getTamil() + u.getEnglish() + u.getMaths() + u.getScience() + u.getMoral();
            ps.setInt(8, total);

            float average = total / 5;
            ps.setFloat(9, average);

            String grade;
            if (average < 60) {
                grade = "E";
            } else if (average < 70) {
                grade = "D";
            } else if (average < 80) {
                grade = "C";
            } else if (average < 90) {
                grade = "B";
            } else {
                grade = "A";
            }
            ps.setString(10, grade);

            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(User u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    //        "update register set name=?,password=?,email=?,sex=?,country=? where id=?");
                    "update register set sname=?,tamil=?,english=?,maths=?,science=?,moral=?, total=?, average=?, grade=? where id=?");
            /*ps.setString(1, u.getName());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getSex());
            ps.setString(5, u.getCountry());
            ps.setInt(6, u.getId());*/
            ps.setString(1, u.getSname());
            ps.setInt(2, u.getTamil());
            ps.setInt(3, u.getEnglish());
            ps.setInt(4, u.getMaths());
            ps.setInt(5, u.getScience());
            ps.setInt(6, u.getMoral());

            int total = u.getTamil() + u.getEnglish() + u.getMaths() + u.getScience() + u.getMoral();
            ps.setInt(7, total);
            float average = total / 500;
            ps.setFloat(8, average);
            String grade;
            if (average < 60) {
                grade = "E";
            } else if (average < 70) {
                grade = "D";
            } else if (average < 80) {
                grade = "C";
            } else if (average < 90) {
                grade = "B";
            } else {
                grade = "A";
            }
            ps.setString(9, grade);

            ps.setInt(10, u.getId());

            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(User u) {
        int status = 0;
        try {
            Connection con = getConnection();
            //PreparedStatement ps = con.prepareStatement("delete from register where id=?");
            PreparedStatement ps = con.prepareStatement("delete from register where id=?");
            ps.setInt(1, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<User> getAllRecords() {
        List<User> list = new ArrayList<User>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from register");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                /*u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setSex(rs.getString("sex"));
                u.setCountry(rs.getString("country"));*/
                u.setId(rs.getInt("id"));
                u.setSname(rs.getString("sname"));
                u.setTamil(rs.getInt("tamil"));
                u.setEnglish(rs.getInt("english"));
                u.setMaths(rs.getInt("maths"));
                u.setScience(rs.getInt("science"));
                u.setMoral(rs.getInt("moral"));
                u.setTotal(rs.getInt("total"));
                u.setAverage(rs.getFloat("average"));
                u.setGrade(rs.getString("grade"));

                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static User getRecordById(int id) {
        User u = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from register where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new User();
                /*u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setSex(rs.getString("sex"));
                u.setCountry(rs.getString("country"));*/

                u.setId(rs.getInt("id"));
                u.setSname(rs.getString("sname"));
                u.setTamil(rs.getInt("tamil"));
                u.setEnglish(rs.getInt("english"));
                u.setMaths(rs.getInt("maths"));
                u.setScience(rs.getInt("science"));
                u.setMoral(rs.getInt("moral"));
                u.setTotal(rs.getInt("total"));
                u.setAverage(rs.getFloat("average"));
                u.setGrade(rs.getString("grade"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
}
