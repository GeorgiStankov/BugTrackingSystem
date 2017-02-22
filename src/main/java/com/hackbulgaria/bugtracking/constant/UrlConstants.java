package com.hackbulgaria.bugtracking.constant;

public class UrlConstants {
	private UrlConstants() {
	}
	public static final String HOME = "/home";
	public static final String DEVELOPERS = "/developers";
	public static final String ACTIONS_URL = "/actionsDeveloper";
	public static final String ADD_DEV_SAVE_URL="/developers/add";
	public static final String REMOVE_DEV_SAVE_URL="/removeDeveloperSave";
	public static final String EDIT_DEV_SAVE_URL="/editDeveloperSave";
	public static final String ISSUE_REGISTER_URL="/IssueRegistry";
	public static final String ISSUE_ACTION_URL="/actionIssue";
	public static final String ADD_ISSUE_URL="/addIssueSave";
	public static final String REMOVE_ISSUE_URL="/removeIssue";
	public static final String EDIT_ISSUE_URL="/editIssue";
	
	///// Below are some suggestions for RESTful mappings
	
	public static final String ADD_DEV = "/developers/add";
	public static final String VIEW_DEV = "/developers/view";
	public static final String EDIT_DEV = "/developers/edit"; // + the id after a slash for a given dev
	public static final String DELETE_DEV = "/developers/delete";
	
	public static final String ISSUES = "/issues";
	public static final String ADD_ISSUE = "/issues/create";
	public static final String ASSIGN_ISSUE = "/issue/assign"; // + the issue id
	public static final String SUBMIT_ISSUE = "/issue/submit";
	public static final String CONFIRM_ISSUE = "/issue/confirm";
	
	public static final String ACTIVE_ISSUES = "/issues/active";
	public static final String ASSIGNED_ISSUES = "/issues/assigned";
	public static final String RESOLVED_ISSUES = "/issues/resolved";
	
	public static final String PROJECTS = "/projects";
	public static final String ADD_PROJECT = "/projects/add";
	public static final String VIEW_PROJECT = "/projects/view";
	public static final String EDIT_PROJECT = "/projects/edit"; // + the id of the project
	public static final String DELETE_PROJECT = "/projects/delete";
	public static final String LOGIN = "/login";
	public static final String LOGOUT = "/logout";
	
}
