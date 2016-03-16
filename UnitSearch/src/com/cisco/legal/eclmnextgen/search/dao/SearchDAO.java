package com.cisco.legal.eclmnextgen.search.dao;

import java.util.List;

import com.cisco.legal.eclmnextgen.search.model.*;

public interface SearchDAO {
	
	public List<BasicSearchBean> getAllRecords();
	public List<BasicSearchBean> getByExternalPartyName(String external_party_name);
	public List<BasicSearchBean> getByContractName(String contract_name);
	public List<BasicSearchBean> getByEclmNumber(int eclm_number);
	public List<BasicSearchBean> getByDealId(String deal_id);
	public List<BasicSearchBean> getByContractStatus(String contract_status);
	public List<BasicSearchBean> getbyContractCategory(String contract_category);
	public List<BasicSearchBean> getByExternalPartyCountry(String external_party_country);
	public List<BasicSearchBean> getbyExternalPartytheatre(String external_party_theatre);
	
}
