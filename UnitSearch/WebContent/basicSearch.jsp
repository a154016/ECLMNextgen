				<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
				
					<article class="tab-pane fade panel panel-default eclm-search-panel-sm eclm-margin-bottom-zero" id="searchTab" style="margin-top: 10px;">
						<div class="panel-body eclm-padding-zero" id="eclm-search-tab-body" >
							<!-- Search criteria section Starts-->
							<section class="eclm-global-search-criteria-section" id="globalSearchCriteriaSection">
								<form id="globalSearchCriteriaForm" class="eclm-padding-top-one-point-five">
									<article class="pull-right eclm-margin-right-one eclm-margin-bottom-one">
										<button type="button" class="btn btn-default btn-sm eclm-search-tab-reset-button">Reset</button>
									<!-- 	<button type="button" class="btn btn-primary btn-sm eclm-search-tab-search-button" onclick="SearchController.do?action=listRecords">Search</button> -->
									<button  onclick="SearchController.do?action=listRecords">Search</button>
									<input type="button" onclick="SearchController.do?action=listRecords" value="search" name="search"/>
									</article>
									<article class="clearfix"></article>
									<form action="SearchController.do?ction=getExternalPartyName" method="get">
									<table id="mainContractSearchTable" class="table-condensed eclm-width-hundred contractHeaderTable vertical-align-middle eclm-font-table">
										<tr>
											<td>External Party Name</td>
											<td class="input-group-sm">
												<select class="form-control">
													<option value="startsWith">Starts With</option>
													<option value="endsWith">Ends With</option>
													<option value="contains" selected>Contains</option>
													<option value="equals">Equals</option>
												</select>
											</td>
											<td class="input-group-sm">
												<input type="text" class="form-control" name="external_party_name">
											</td>
										</tr>
										<tr>
											<td width="25%">Contract Name</td>
											<td width="25%" class="input-group-sm">
												<select class="form-control">
													<option value="startsWith">Starts With</option>
													<option value="endsWith">Ends With</option>
													<option value="contains" selected>Contains</option>
													<option value="equals">Equals</option>
												</select>
											</td>
											<td width="50%" class="input-group-sm">
												<input type="text" class="form-control">
											</td>
										</tr>
										<tr>
											<td>ECLM#</td>
											<td class="input-group-sm">
												<select class="form-control">
													<option value="equals">Equals</option>
													<option value="above">Above</option>
													<option value="atOrAbove">At or Above</option>
													<option value="below">Below</option>
													<option value="atOrBelow">At or Below</option>
													<option value="between">Between</option>
													<option value="notEqual">Not Equal</option>
												</select>
											</td>
											<td class="input-group-sm">
												<input id="mainContractSearchContractNo" type="text" class="form-control">
											</td>
										</tr>
										<tr>
											<td>Deal ID</td>
											<td class="input-group-sm">
												<select class="form-control">
													<option value="startsWith">Starts With</option>
													<option value="endsWith">Ends With</option>
													<option value="contains" selected>Contains</option>
													<option value="equals">Equals</option>
												</select>
											</td>
											<td class="input-group-sm">
												<input type="text" class="form-control">
											</td>															
										</tr>
										<tr>
											<td>Contract Status</td>
											<td>
												<span class="eclm-form-suggestive-text">(Active, Expired, ..)</span>
											</td>
											<td class="input-group-sm">
												<select class="form-control multiselect" multiple="multiple">
													<option value="active">Active</option>
													<option value="draft">Draft</option>
													<option value="executed">Executed</option>
													<option value="expired">Expired</option>
													<option value="superseded">Superseded</option>	
													<option value="terminated">Terminated</option>		
													<option value="terminationPending">Termination Pending</option>								
													<option value="withdrawn">Withdrawn</option>																							
												</select>
											</td>
										</tr>									
										<tr>
											<td>Contract Category</td>
											<td>
												<span class="eclm-form-suggestive-text">(Sales, technology, ..)</span>
											</td>
											<td class="input-group-sm">
												<select class="form-control multiselect" multiple="multiple">
													<option value="Sales">Sales</option>
													<option value="Manufacturing">Manufacturing</option>
													<option value="Technology">Technology</option>
													<option value="Other">Other</option>
												</select>
											</td>
										</tr>
										<tr>
											<td width="25%">External Party Country</td>
											<td width="25%" class="input-group-sm">
												<select class="form-control">
													<option value="startsWith">Starts With</option>
													<option value="endsWith">Ends With</option>
													<option value="contains" selected>Contains</option>
													<option value="equals">Equals</option>
												</select>
											</td>
											<td width="50%" class="input-group-sm">
												<input type="text" class="form-control">
											</td>
										</tr>
										<tr>
											<td width="25%">External Party Theater</td>
											<td width="25%" class="input-group-sm">
												<select class="form-control">
													<option value="startsWith">Starts With</option>
													<option value="endsWith">Ends With</option>
													<option value="contains" selected>Contains</option>
													<option value="equals">Equals</option>
												</select>
											</td>
											<td width="50%" class="input-group-sm">
												<input type="text" class="form-control">
											</td>
										</tr>
									</table>
									<input type="submit" name="Submit">
									</form><br>
									<a href="SearchController.do?action=getExternalPartyName">GetByExternalPartyName</a>
									<!-- <article id="advancedSearchAccordion" class="panel-group eclm-width-ninety-nine eclm-margin-bottom-zero eclm-margin-top-two">
										<article class="panel panel-default">
											<header class="panel-heading eclm-accordion-header" data-toggle="collapse" data-target="#advancedSearchSection" >
												<h4 class="panel-title">
													<i class="fa fa-angle-right" title="Expand"></i>
													<span class="eclm-accordion-header-title">Advanced Search</span>
												</h4>
											</header>
											<section id="advancedSearchSection" class="panel-collapse collapse">
												<article class="panel-body eclm-padding-five-px">
													<form>
														<table class="table-condensed eclm-width-hundred contractHeaderTable vertical-align-middle eclm-font-table">
															<tr>
																<td>Approval ID</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="startsWith">Starts With</option>
																		<option value="endsWith">Ends With</option>
																		<option value="contains" selected>Contains</option>
																		<option value="equals">Equals</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<input type="text" class="form-control">
																</td>															
															</tr>
															<tr>
																<td class="eclm-width-twenty-five">Remedy INC#</td>
																<td class="eclm-width-twenty-five input-group-sm">
																	<select class="form-control">
																		<option value="startsWith">Starts With</option>
																		<option value="endsWith">Ends With</option>
																		<option value="contains" selected>Contains</option>
																		<option value="equals">Equals</option>
																	</select>
																</td>
																<td class="eclm-width-fifty input-group-sm">
																	<input type="text" class="form-control">
																</td>															
															</tr>
															<tr>
																<td>Primary CN</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="startsWith">Starts With</option>
																		<option value="endsWith">Ends With</option>
																		<option value="contains" selected>Contains</option>
																		<option value="equals">Equals</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<input type="text" class="form-control">
																</td>
															</tr>
															<tr>
																<td>Amendment CN</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="startsWith">Starts With</option>
																		<option value="endsWith">Ends With</option>
																		<option value="contains" selected>Contains</option>
																		<option value="equals">Equals</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<input type="text" class="form-control">
																</td>
															</tr>
															<tr>
																<td>Customer Contract#</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="startsWith">Starts With</option>
																		<option value="endsWith">Ends With</option>
																		<option value="contains" selected>Contains</option>
																		<option value="equals">Equals</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<input type="text" class="form-control">
																</td>															
															</tr>
															<tr>
																<td>Contract Effective Start Date</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="after">After</option>
																		<option value="noOrAfter">On or After</option>
																		<option value="before">Before</option>
																		<option value="onOrBefore">On or Before</option>
																		<option value="equals">Equals</option>
																		<option value="between">Between</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<article class="input-group-sm input-group eclm-date-picker">
																		<input id="searchTabContractStartDate" name="searchTabContractStartDate" type="text" class="form-control eclm-date-picker" >
																		<span class="input-group-addon">
																			<span class="glyphicon glyphicon-calendar"></span>
																		</span>
																	</article>
																</td>
															</tr>
															<tr>
																<td>Contract Effective End Date</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="after">After</option>
																		<option value="onOrAfter">On or After</option>
																		<option value="before">Before</option>
																		<option value="onOrBefore">On or Before</option>
																		<option value="equals">Equals</option>
																		<option value="between">Between</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<article class="input-group-sm input-group eclm-date-picker">
																		<input id="searchTabContractEndDate" name="searchTabContractEndDate" type="text" class="form-control eclm-date-picker">
																		<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
																	</article>
																</td>
															</tr>
															<tr>
																<td>Contract Class</td>
																<td></td>
																<td class="input-group-sm">
																	<select class="form-control multiselect" multiple="multiple">
																		<option value="acquisition">Acquisition</option>
																		<option value="autoApprove">Auto Approve</option>
																		<option value="channel">Channel</option>
																		<option value="enterprise">Enterprise</option>
																		<option value="other">Other</option>
																		<option value="serviceProvider">Service Provider</option>
																		<option value="unknown">Unknown</option>
																		<option value="manufacturing">Manufacturing</option>
																	</select>
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	<hr class="eclm-margin-five-px" />
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	
																	<table id="searchTabDateAttributesTable" 
																		class="table-condensed eclm-width-hundred contractHeaderTable vertical-align-middle eclm-width-hundred">
																		<tr>
																			<td colspan="4" class="eclm-padding-vertical-five-px">
																				<span class="pull-left">Date</span>
																				<span class="pull-right"><a onclick="showAddDateAttributes('SEARCHTAB')">Add</a></span>
																				<span class="clearfix"></span>																			
																			</td>
																		</tr>
																	</table>

																	<input type="hidden" id="searchTabAdvancedSearchDateAttributesCount" value="0" />
																	
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	<hr class="eclm-margin-five-px" />
																</td>
															</tr>
															<tr>
																<td>Contract Creation Date</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="after">After</option>
																		<option value="noOrAfter">On or After</option>
																		<option value="before">Before</option>
																		<option value="onOrBefore">On or Before</option>
																		<option value="equals">Equals</option>
																		<option value="between">Between</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<article class="input-group-sm input-group eclm-date-picker">
																		<input id="searchTabContractCreationDate" name="searchTabContractCreationDate" type="text" class="form-control eclm-date-picker" >
																		<span class="input-group-addon">
																			<span class="glyphicon glyphicon-calendar"></span>
																		</span>
																	</article>
																</td>
															</tr>
															<tr>
																<td>Contract Exectution Date</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="after">After</option>
																		<option value="onOrAfter">On or After</option>
																		<option value="before">Before</option>
																		<option value="onOrBefore">On or Before</option>
																		<option value="equals">Equals</option>
																		<option value="between">Between</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<article class="input-group-sm input-group eclm-date-picker">
																		<input id="searchTabContractExectutionDate" name="searchTabContractExectutionDate" type="text" class="form-control eclm-date-picker">
																		<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
																	</article>
																</td>
															</tr>
															<tr>
																<td>Contract Activation Date</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="after">After</option>
																		<option value="noOrAfter">On or After</option>
																		<option value="before">Before</option>
																		<option value="onOrBefore">On or Before</option>
																		<option value="equals">Equals</option>
																		<option value="between">Between</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<article class="input-group-sm input-group eclm-date-picker">
																		<input id="searchTabContractActivationDate" name="searchTabContractActivationDate" type="text" class="form-control eclm-date-picker" >
																		<span class="input-group-addon">
																			<span class="glyphicon glyphicon-calendar"></span>
																		</span>
																	</article>
																</td>
															</tr>
															<tr>
																<td>Contract Expiration Date</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="after">After</option>
																		<option value="onOrAfter">On or After</option>
																		<option value="before">Before</option>
																		<option value="onOrBefore">On or Before</option>
																		<option value="equals">Equals</option>
																		<option value="between">Between</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<article class="input-group-sm input-group eclm-date-picker">
																		<input id="searchTabContractExpirationDate" name="searchTabContractExpirationDate" type="text" class="form-control eclm-date-picker">
																		<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
																	</article>
																</td>
															</tr>
															<tr>
																<td>Contract Termination Date</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="after">After</option>
																		<option value="noOrAfter">On or After</option>
																		<option value="before">Before</option>
																		<option value="onOrBefore">On or Before</option>
																		<option value="equals">Equals</option>
																		<option value="between">Between</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<article class="input-group-sm input-group eclm-date-picker">
																		<input id="searchTabContractStartDate" name="searchTabContractStartDate" type="text" class="form-control eclm-date-picker" >
																		<span class="input-group-addon">
																			<span class="glyphicon glyphicon-calendar"></span>
																		</span>
																	</article>
																</td>
															</tr>
															<tr>
																<td>Contract Superseded Date</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="after">After</option>
																		<option value="onOrAfter">On or After</option>
																		<option value="before">Before</option>
																		<option value="onOrBefore">On or Before</option>
																		<option value="equals">Equals</option>
																		<option value="between">Between</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<article class="input-group-sm input-group eclm-date-picker">
																		<input id="searchTabContractEndDate" name="searchTabContractEndDate" type="text" class="form-control eclm-date-picker">
																		<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
																	</article>
																</td>
															</tr>
															<tr>
																<td>External Party Role</td>
																<td></td>
																<td class="input-group-sm">
																	<select class="form-control multiselect" multiple="multiple">
																		<option value="affiliate">Affiliate</option>
																		<option value="main">Main Party</option>
																	</select>
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	<hr class="eclm-margin-five-px" />
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	
																	<table id="externalPartyAttributesTable" 
																		class="table-condensed eclm-width-hundred contractHeaderTable vertical-align-middle eclm-width-hundred">
																		<tr>
																			<td colspan="4" class="eclm-padding-vertical-five-px">
																				<span class="pull-left">External Party Attributes</span>
																				<span class="pull-right"><a onclick="showAddPartyAttributes('external', 'searchTab')">Add</a></span>
																				<span class="clearfix"></span>																			
																			</td>
																		</tr>
																	</table>

																	<input type="hidden" id="searchTabAdvancedSearchExternalPartyAttributesCount" value="0" />
																	
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	<hr class="eclm-margin-five-px" />
																</td>
															</tr>
															<tr>
																<td>Internal Party Name</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="startsWith">Starts With</option>
																		<option value="endsWith">Ends With</option>
																		<option value="contains" selected>Contains</option>
																		<option value="equals">Equals</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<input type="text" class="form-control">
																</td>
															</tr>
															<tr>
																<td>Internal Party Role</td>
																<td></td>
																<td class="input-group-sm">
																	<select class="form-control multiselect" multiple="multiple">
																		<option value="affiliate">Affiliate</option>
																		<option value="main">Main Party</option>
																	</select>
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	<hr class="eclm-margin-five-px" />
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	
																	<table id="internalPartyAttributesTable" 
																		class="table-condensed eclm-width-hundred contractHeaderTable vertical-align-middle eclm-width-hundred">
																		<tr>
																			<td colspan="4" class="eclm-padding-vertical-five-px">
																				<span class="pull-left">Internal Party Attributes</span>
																				<span class="pull-right"><a onclick="showAddPartyAttributes('internal', 'searchTab')">Add</a></span>
																				<span class="clearfix"></span>																			
																			</td>
																		</tr>
																	</table>

																	<input type="hidden" id="searchTabAdvancedSearchInternalPartyAttributesCount" value="0" />
																	
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	<hr class="eclm-margin-five-px" />
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	
																	<table id="searchTabBusinessTermsTable" 
																		class="table-condensed eclm-width-hundred contractHeaderTable vertical-align-middle eclm-width-hundred">
																		<tr>
																			<td colspan="4" class="eclm-padding-vertical-five-px">
																				<span class="pull-left">Business Terms</span>
																				<span class="pull-right"><a onclick="openAddTermsModal('searchTab')">Add</a></span>
																				<span class="clearfix"></span>																			
																			</td>
																		</tr>
																	</table>

																	<input type="hidden" id="searchTabAdvancedSearchBusinessTermsCount" value="0" />
																	
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	<hr class="eclm-margin-five-px" />
																</td>
															</tr>
															<tr>
																<td>Contract Relationship</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="">--Select Relationship--</option>
																		<option value="addendum">Addendum</option>
																		<option value="amendment">Amendment</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<article class="input-group-sm input-group">
																		<input type="text" class="form-control eclm-read-only" value="" id="searchTabSearchRelationshipContractNumber"
																			placeholder="Select Contract"
																			title="Click on search icon to search contract" />
																		<span class="input-group-addon">
																			<span class="glyphicon glyphicon-search" onclick="openSearchContractModal('searchTabRelationship')"></span>
																		</span>
																	</article>
																</td>	
															</tr>
															<tr>
																<td>Contract Relationship</td>
																<td></td>
																<td class="input-group-sm">
																	
																	<article class="pull-left eclm-select-relationship">
																		--Select Relationship--
																	</article>
																	<article class="pull-right">
																		<span class="glyphicon glyphicon-search" data-toggle="" data-target=""></span>
																	</article>
																	<article class="clearfix"></article>
																	
																	<article class="input-group-sm input-group">
																		<input type="text" class="form-control" value="" id=""
																			placeholder="Select Relationship" />
																		<span class="input-group-addon">
																			<span class="glyphicon glyphicon-search" data-toggle="" data-target=""></span>
																		</span>
																	</article>
																</td>	
															</tr>
															<tr>
																<td></td>
																<td></td>
																<td class="input-group-sm">
																
																	<article class="pull-left eclm-select-relationship">
																		--Select Contract--
																	</article>
																	<article class="pull-right">
																		<span class="glyphicon glyphicon-search" data-toggle="" data-target=""></span>
																	</article>
																	<article class="clearfix"></article>
																	
																	<article class="input-group-sm input-group">
																		<input type="text" class="form-control" value="" id="searchTabSearchRelationshipContractNumber"
																			placeholder="Select Contract" />
																		<span class="input-group-addon">
																			<span class="glyphicon glyphicon-search" onclick="openSearchContractModal('searchTab')"></span>
																		</span>
																	</article>
																</td>
															</tr>
															<tr>
																<td>Approval Type</td>
																<td></td>
																<td class="input-group-sm">
																	<select class="form-control multiselect" multiple="multiple"
																		onchange="updateSearchContractApprovalStatusDropdown(this, 'searchTab')">
																		<option value="inProcessVAP">In - Process VAP</option>
																		<option value="advanceVAP">Advance VAP</option>
																		<option value="finalVAP">Final VAP</option>
																		<option value="autoApprove">Auto Approve</option>
																		<option value="clickAccept">Click-Accept</option>
																	</select>
																</td>															
															</tr>
															<tr>
																<td>Approval Status</td>
																<td></td>
																<td class="input-group-sm">
																	<select class="form-control multiselect eclm-approval-status-select" multiple="multiple">
																		<option value="partial" class="eclm-approval-status-for-approval-type-vap">Partial</option>
																		<option value="active" class="eclm-approval-status-for-approval-type-vap">Active</option>
																		<option value="onHold" class="eclm-approval-status-for-approval-type-vap">On Hold</option>
																		<option value="void" class="eclm-approval-status-for-approval-type-vap">Void</option>
																		<option value="completed" class="eclm-approval-status-for-approval-type-vap">Completed</option>
																		<option value="submitted" class="eclm-approval-status-for-approval-type-click-accept">Submitted</option>
																		<option value="nominated" class="eclm-approval-status-for-approval-type-click-accept">Nominated</option>
																		<option value="accepted" class="eclm-approval-status-for-approval-type-click-accept">Accepted</option>
																		<option value="declined" class="eclm-approval-status-for-approval-type-click-accept">Declined</option>
																		<option value="voided" class="eclm-approval-status-for-approval-type-click-accept">Voided</option>
																	</select>
																</td>															
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	<hr class="eclm-margin-five-px" />
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	
																	<table id="searchTabAdditionalCriteriaTable" 
																		class="table-condensed eclm-width-hundred contractHeaderTable vertical-align-middle eclm-width-hundred">
																		<tr>
																			<td colspan="4" class="eclm-padding-vertical-five-px">
																				<span class="pull-left">Additional Criteria</span>
																				<span class="pull-right"><a onclick="showAddAdditionalCriteria('SEARCHTAB')">Add</a></span>
																				<span class="clearfix"></span>																			
																			</td>
																		</tr>
																	</table>

																	<input type="hidden" id="searchTabAdvancedSearchAdditionalCriteriaCount" value="0" />
																	
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-padding-zero">
																	<hr class="eclm-margin-five-px" />
																</td>
															</tr>
															<tr>
																<td>Contract Activation Flag</td>
																<td></td>
																<td class="input-group-sm">
																	<select class="form-control multiselect" multiple="multiple">
																		<option value="ActivationPending">Activation Pending</option>
																		<option value="BusinessHasNoIntentToRenew">Business Has No Intent To Renew</option>
																		<option value="AutoApproval">Auto Approval</option>
																	</select>
																</td>															
															</tr>
															<tr>
																<td>Contract Created By</td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="startsWith">Starts With</option>
																		<option value="endsWith">Ends With</option>
																		<option value="contains" selected>Contains</option>
																		<option value="equals">Equals</option>
																	</select>
																</td>
																<td class="input-group-sm">
																	<input type="text" class="form-control">
																</td>
															</tr>
															<tr>
																<td>Contract Locked</td>
																<td></td>
																<td class="input-group-sm">
																	<select class="form-control">
																		<option value="yes">Yes</option>
																		<option value="no">No</option>
																	</select>
																</td>
															</tr>
															<tr>
																<td>Include Amendments</td>
																<td class="input-group-sm">
																	<input type="checkbox" class="">
																</td>
																<td></td>
															</tr>
															<tr>
																<td>Created using Save as</td>
																<td class="input-group-sm">
																	<input type="checkbox" onclick="showSearchContractInput(this)">
																</td>
																<td>
																	<article class="input-group-sm input-group">
																		<input type="text" class="form-control eclm-read-only" value="" id="searchTabCreatedUsingSaveAsContractNumber"
																			placeholder="Select Contract" 
																			title="Click on search icon to search contract" />
																		<span class="input-group-addon">
																			<span class="glyphicon glyphicon-search" onclick="openSearchContractModal('searchTabCreatedUsingSaveAs')"></span>
																		</span>
																	</article>
																</td>
															</tr>
															<tr>
																<td>Business has no intent to renew</td>
																<td></td>
																<td class="input-group-sm">
																	<input type="checkbox" />
																</td>
															</tr>
															<tr>
																<td colspan="3" class="eclm-text-align-right">
																	<button type="button" class="btn btn-default btn-sm eclm-search-tab-reset-button">Reset</button>
																	<button type="button" class="btn btn-primary btn-sm eclm-search-tab-search-button">Search</button>
																</td>
															</tr>
														</table>
													</form>
												</article>
											</section>
										</article>
									</article> -->
								</form>
							</section>
							<!-- Search criteria section ends-->
							
							<!-- <section class="well eclm-slider-bar" id="searchSliderBar"></section> -->
							
							<!-- Search results section starts-->
							<section class="eclm-global-search-result-section-sm" id="globalSearchResultSection">
								
								<section class="eclm-padding-one">
									<!-- <article class="pull-left">
										<span class="btn btn-primary btn-sm" id="showHideCriteria">Hide Criteria</span>
									</article>
									<article class="actionElement eclm-margin-top-clear"> -->
										<!-- <span class="btn btn-default btn-sm" title="Download FEC" onclick="multiLineAction('download')">Download FEC</span> -->
										<!-- <article class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Download
												<span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-menu-sm" role="menu">
												<li><a onclick="multiLineAction('download')">For this Contract</a></li>
												<li><a onclick="multiLineAction('download')">For Related Contracts</a></li>
												<li><a onclick="multiLineAction('download')">Fully Executed Copy</a></li>
												<li><a onclick="multiLineAction('download')">Executive Summary</a></li>
											</ul>
										</article>
										<span class="btn btn-default btn-sm" title="Export to Excel" onclick="multiLineAction('export')">Export to Excel</span>
										<span class="btn btn-default btn-sm" title="Unlock" onclick="multiLineAction('unlock')">Unlock</span> -->
										<!-- <span class="btn btn-default btn-sm" id="searchResultComments" data-toggle="modal" data-target="false" title="Comments" onclick="">Comments</span>
										<span class="btn btn-default btn-sm" id="searchResultActivity" data-toggle="modal" data-target="false" title="Activity" onclick="">Activity</span> -->
									<!-- </article>	 -->					
									
									<!-- <article class="actionElement eclm-margin-top-clear">
										<article class="btn-group">
											<span class="btn btn-default btn-sm" id="searchResultDelete" data-toggle="modal" data-target="false" title="Delete">Delete</span>
											<span class="btn btn-default btn-sm" title="Download Contract" onclick="multiLineAction('download')">Download</span>
											<span class="btn btn-default btn-sm" title="Export to Excel" onclick="multiLineAction('export')">Export to Excel</span>
											<span class="btn btn-default btn-sm" title="Unlock" onclick="multiLineAction('unlock')">Unlock</span>
										</article>
										<article class="btn-group">
											<span class="btn btn-default btn-sm" id="searchResultComments" data-toggle="modal" data-target="false" title="Comments" onclick="">Comments</span>
											<span class="btn btn-default btn-sm" id="searchResultActivity" data-toggle="modal" data-target="false" title="Activity" onclick="">Activity</span>
										</article>
									</article> -->
									
									<article class="clearfix"></article>
									<br>
									<table border="1" id="searchResultsTable" class="contractHeaderTable table table-striped table-bordered eclm-font-table eclm-width-hundred-imp" cellspacing="0">
										<thead>
											<tr>
												<th class="eclm-no-sort eclm-width-two sorting_disabled"><span><input type="checkbox" class="eclm-table-header-checkbox"></span></th>
												<th class="eclm-width-seven">ECLM#</th>
												<th class="eclm-width-five">Record Type</th>
												<th class="eclm-width-five">Master <br>ECLM#</th>
												<th class="eclm-width-ten">External Party Name</th>
												<th class="eclm-width-eleven">Contract Name</th>
												<th class="eclm-width-twenty-five">Description Summary</th>
												<th class="eclm-width-ten">Contract Negotiator</th>
												<th class="eclm-width-five">Category <br>Class</th>
												<th class="eclm-width-ten">Term Date</th>
												<th class="eclm-width-five">Status</th>
												<th class="eclm-width-five">FEC</th>
											</tr>
										</thead>
										<tbody class="eclm-table-row-selection">
										
										<c:forEach items="${records}" var="record">
				<tr>
				<td><c:out value="" /></td>
					<td><c:out value="${record.eclm_number}" /></td>
					<td><c:out value="" /></td>
					<td><c:out value="${record.eclm_number}" /></td>
					<td><c:out value="${record.external_party_name}" /></td>
					<td><c:out value="${record.contract_name}"/></td>
					<td><c:out value="" /></td>
					<td><c:out value="" /></td>
					<td><c:out value="${record.contract_category}"/></td>
					<td><c:out value="" /></td>
					<td><c:out value="${record.contract_status}" /></td>
					<td><c:out value="" /></td>
					 
				</tr>
			</c:forEach>
											
										</tbody>
									</table>
								</section>
							</section>
							<!-- Search results section ends-->
						</div>
					</article>