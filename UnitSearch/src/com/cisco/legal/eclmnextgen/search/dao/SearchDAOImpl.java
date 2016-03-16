package com.cisco.legal.eclmnextgen.search.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cisco.legal.eclmnextgen.search.model.BasicSearchBean;
import com.cisco.legal.eclmnextgen.search.util.DBUtil;




public class SearchDAOImpl implements SearchDAO {
	private Connection conn;
	
	public SearchDAOImpl() {
		conn = DBUtil.getConnection();
		if(conn!=null)
		{
			System.out.println("you are in search DAO Implementataion and now Connected");
		}
		else 
		{
			System.out.println("Not Connected");
		}
	}

	@Override
	public List<BasicSearchBean> getAllRecords() {
	
		
			List<BasicSearchBean> records = new ArrayList<BasicSearchBean>();
			try {
				System.out.println("inside get all search Records ");
				Statement statement = conn.createStatement();
				ResultSet resultSet = statement.executeQuery( "select * from search_test" );
				while( resultSet.next() ) {
					BasicSearchBean basicSearchBean = new BasicSearchBean();
					basicSearchBean.setExternal_party_name(resultSet.getString("external_party_name"));
					basicSearchBean.setContract_name(resultSet.getString("contract_name"));
					basicSearchBean.setEclm_number(resultSet.getInt("eclm_number"));
					basicSearchBean.setDeal_id(resultSet.getString("deal_id"));
					basicSearchBean.setContract_status(resultSet.getString("contract_status"));
					basicSearchBean.setContract_category(resultSet.getString("contract_category"));
					basicSearchBean.setExternal_party_country(resultSet.getString("external_party_country"));
					basicSearchBean.setExternal_party_theatre(resultSet.getString("external_party_theatre"));
					records.add(basicSearchBean);
					
				}
				resultSet.close();
				statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return records;
		}
	

	@Override
	public List<BasicSearchBean> getByExternalPartyName(
			String external_party_name) {
		List<BasicSearchBean> records = new ArrayList<BasicSearchBean>();
	    BasicSearchBean  basicSearchBean = new BasicSearchBean();
		try {
			String query = "select * from student where external_party_name=?";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			preparedStatement.setString(1, external_party_name);
			ResultSet resultSet = preparedStatement.executeQuery();
			while( resultSet.next() ) {
				
				basicSearchBean.setExternal_party_name(resultSet.getString("external_party_name"));
				basicSearchBean.setContract_name(resultSet.getString("contract_name"));
				basicSearchBean.setEclm_number(resultSet.getInt("eclm_number"));
				basicSearchBean.setDeal_id(resultSet.getString("deal_id"));
				basicSearchBean.setContract_status(resultSet.getString("contract_status"));
				basicSearchBean.setContract_category(resultSet.getString("contract_category"));
				basicSearchBean.setExternal_party_country(resultSet.getString("external_party_country"));
				basicSearchBean.setExternal_party_theatre(resultSet.getString("external_party_theatre"));
				records.add(basicSearchBean);
			resultSet.close();
			preparedStatement.close();
		}}
			catch (SQLException e) {
			e.printStackTrace();
		}
		return records;
		}
	@Override
	public List<BasicSearchBean> getByContractName(String contract_name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BasicSearchBean> getByEclmNumber(int eclm_number) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BasicSearchBean> getByDealId(String deal_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BasicSearchBean> getByContractStatus(String contract_status) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BasicSearchBean> getbyContractCategory(String contract_category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BasicSearchBean> getByExternalPartyCountry(
			String external_party_country) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BasicSearchBean> getbyExternalPartytheatre(
			String external_party_theatre) {
		// TODO Auto-generated method stub
		return null;
	}

}
