<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>User Registration</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap/csspages/a.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
<div class="mainCntr">
	<div class="logo">
		<img src="bootstrap/images/logo_ivo.png" alt="indian visa online"
			title="indian visa online">
	</div>

	<div>
		<img class="banner" alt="Indian Visa Online"
			src="bootstrap/images/banner1.jpg">
	</div>
</head>




<body>

	<div class="container">

		<div class="a">
			<a href="onlinevisaaplication">Regular Visa Application</a>
		</div>
		<div class="a">
			<a href="filledPartialyForm">Complete Partially Filled form</a>
		</div>
		<div class="a">
			<a href="showStatus">Visa Status Enquiry</a>
		</div>
		<div class="a">
			<a href="printForm1">Print Registered Application </a>
		</div>

	</div>

	<!--  filledPartialyForm     showStatus   printForm1 -->


	<div class="container-fluid">

		<div class="col-md-3">

			<!--Begin left_menu-->
			<div class="left_bar">
				<div class="left_bar_inner">
					<div class="sidebar">

						<ul>
							<h4>Visa Information</h4>
							<li><a
								onclick="$('#overview').css('display', 'block');
                                        $('#online_visa_application').css('display', 'none');
                                        $('#visa_categories').css('display', 'none');
                                        $('#visa_processing_time').css('display', 'none');
                                        $('#visa_photo_requirements').css('display', 'none');
                                        $('#fees_indian_visa').css('display', 'none');
                                        $('#visa_provision').css('display', 'none');
                                        $('#technical_info').css('display', 'none');
                                        $('#instructions').css('display', 'none');
                                        $('#useful_weblink').css('display', 'none');">Overview</a></li>
							<li><a
								onclick="$('#overview').css('display', 'none');
                                        $('#online_visa_application').css('display', 'block');
                                        $('#visa_categories').css('display', 'none');
                                        $('#visa_processing_time').css('display', 'none');
                                        $('#visa_photo_requirements').css('display', 'none');
                                        $('#fees_indian_visa').css('display', 'none');
                                        $('#visa_provision').css('display', 'none');
                                        $('#technical_info').css('display', 'none');
                                        $('#instructions').css('display', 'none');
                                        $('#useful_weblink').css('display', 'none');">Regular
									Visa Application</a></li>

							<li><a
								onclick="$('#overview').css('display', 'none');
                                        $('#online_visa_application').css('display', 'none');
                                        $('#visa_categories').css('display', 'block');
                                        $('#visa_processing_time').css('display', 'none');
                                        $('#visa_photo_requirements').css('display', 'none');
                                        $('#fees_indian_visa').css('display', 'none');
                                        $('#foreigner_act').css('display', 'none');
                                        $('#visa_provision').css('display', 'none');
                                        $('#technical_info').css('display', 'none');
                                        $('#instructions').css('display', 'none');
                                        $('#useful_weblink').css('display', 'none');">Visa
									Categories</a></li>
							<li><a
								onclick="$('#overview').css('display', 'none');
                                        $('#online_visa_application').css('display', 'none');
                                        $('#visa_categories').css('display', 'none');
                                        $('#visa_processing_time').css('display', 'block');
                                        $('#visa_photo_requirements').css('display', 'none');
                                        $('#fees_indian_visa').css('display', 'none');
                                        $('#foreigner_act').css('display', 'none');
                                        $('#visa_provision').css('display', 'none');
                                        $('#technical_info').css('display', 'none');
                                        $('#instructions').css('display', 'none');
                                        $('#useful_weblink').css('display', 'none');">Visa
									Processing Time</a></li>
							<li><a
								onclick="$('#overview').css('display', 'none');
                                        $('#online_visa_application').css('display', 'none');
                                        $('#visa_categories').css('display', 'none');
                                        $('#visa_processing_time').css('display', 'none');
                                        $('#visa_photo_requirements').css('display', 'block');
                                        $('#fees_indian_visa').css('display', 'none');
                                        $('#foreigner_act').css('display', 'none');
                                        $('#visa_provision').css('display', 'none');
                                        $('#technical_info').css('display', 'none');
                                        $('#instructions').css('display', 'none');
                                        $('#useful_weblink').css('display', 'none');">Photo
									Requirements</a></li>

							<li><a
								onclick="$('#overview').css('display', 'none');
                                        $('#online_visa_application').css('display', 'none');
                                        $('#visa_categories').css('display', 'none');
                                        $('#visa_processing_time').css('display', 'none');
                                        $('#visa_photo_requirements').css('display', 'none');
                                        $('#fees_indian_visa').css('display', 'block');
                                        $('#foreigner_act').css('display', 'none');
                                        $('#visa_provision').css('display', 'none');
                                        $('#technical_info').css('display', 'none');
                                        $('#instructions').css('display', 'none');
                                        $('#useful_weblink').css('display', 'none');">Fee
									for Indian Visa</a></li>

							<li><a
								onclick="$('#overview').css('display', 'none');
                                        $('#online_visa_application').css('display', 'none');
                                        $('#visa_categories').css('display', 'none');
                                        $('#visa_processing_time').css('display', 'none');
                                        $('#visa_photo_requirements').css('display', 'none');
                                        $('#fees_indian_visa').css('display', 'none');
                                        $('#foreigner_act').css('display', 'none');
                                        $('#visa_provision').css('display', 'block');
                                        $('#technical_info').css('display', 'none');
                                        $('#instructions').css('display', 'none');
                                        $('#useful_weblink').css('display', 'none');">Visa
									Provision</a></li>
							<li><a
								onclick="$('#overview').css('display', 'none');
                                        $('#online_visa_application').css('display', 'none');
                                        $('#visa_categories').css('display', 'none');
                                        $('#visa_processing_time').css('display', 'none');
                                        $('#visa_photo_requirements').css('display', 'none');
                                        $('#fees_indian_visa').css('display', 'none');
                                        $('#foreigner_act').css('display', 'none');
                                        $('#visa_provision').css('display', 'none');
                                        $('#technical_info').css('display', 'block');
                                        $('#instructions').css('display', 'none');
                                        $('#useful_weblink').css('display', 'none');">Technical
									Info.</a></li>
							<li><a
								onclick="$('#overview').css('display', 'none');
                                        $('#online_visa_application').css('display', 'none');
                                        $('#visa_categories').css('display', 'none');
                                        $('#visa_processing_time').css('display', 'none');
                                        $('#visa_photo_requirements').css('display', 'none');
                                        $('#fees_indian_visa').css('display', 'none');
                                        $('#foreigner_act').css('display', 'none');
                                        $('#visa_provision').css('display', 'none');
                                        $('#technical_info').css('display', 'none');
                                        $('#instructions').css('display', 'block');
                                        $('#useful_weblink').css('display', 'none');">Instructions
									for form</a></li>
							<li><a
								onclick="$('#overview').css('display', 'none');
                                        $('#online_visa_application').css('display', 'none');
                                        $('#visa_categories').css('display', 'none');
                                        $('#visa_processing_time').css('display', 'none');
                                        $('#visa_photo_requirements').css('display', 'none');
                                        $('#fees_indian_visa').css('display', 'none');
                                        $('#foreigner_act').css('display', 'none');
                                        $('#visa_provision').css('display', 'none');
                                        $('#technical_info').css('display', 'none');
                                        $('#instructions').css('display', 'none');
                                        $('#useful_weblink').css('display', 'block');">Useful
									Web links</a></li>

						</ul>
					</div>
				</div>
			</div>
			<!--End left_menu-->
		</div>


		<!--Begin overview-->
		<div class="right_area" id="overview">
			<div class="right_bar_inner">
				<h4 style="text-align: center; color: crimson">OverView</h4>
			</div>
			<p>
				All foreign nationals entering India are required to possess a valid
				international travel document in the form of a national passport
				with a valid visa obtained from an Indian Mission or Post abroad.<br>
				<br> All Individual visa seekers are requested to apply for the
				Indian Visa through Online application link , in order to make an
				application for getting the Indian visa.<br> <br> The duly
				signed physical copy of the application form completed in all
				respect and submitted successfully, is to be submitted at the
				concerned Indian Visa Application Center (IVAC) or directly to
				Indian Mission/ Post, on the scheduled date of interview along with
				the requisite supporting documents. The instructions for filling the
				form and scheduling the appointment can be seen at Instructions for
				Regular Visa Application. Important technical information for
				filling online Indian visa application can be referred at Technical
				Instructions.<br> <br>
		</div>
		<!--End overview -->



		<!--Begin online visa application-->
		<div class="right_area" id="online_visa_application"
			style="display: none">
			<div class="right_bar_inner">
				<h4>Regular Visa Application</h4>
			</div>
			<p>All Individual visa seekers are requested to apply for the
				Indian Visa through online application link. Or can apply by typing
				the URL: https://indianvisaonline.gov.in in the address bar of web
				browser, in order to make an application for getting the Indian
				visa. In either case, no hand written application form will be
				accepted by any of the Indian Mission/ Post, where-ever online Visa
				facility has been implemented. The application form completed in all
				respect and submitted succesfully, is to be submitted at the
				concerned Indian Visa Application Center (IVAC) or directly to
				Indian Mission/ Post in absence of IVAC, on the scheduled date of
				interview along with the requisite supporting documents. The
				instructions for filling the form and scheduling the appointment can
				be refered at Instructions for Regular Visa Application. Important
				technical information for filling online Indian visa application can
				be referred at Technical Instructions.</p>
		</div>
		<!--End online visa application  -->


		<!--Begin visa categories-->
		<div class="right_area" id="visa_categories" style="display: none">
			<div class="right_bar_inner">
				<h4>Visa Categories</h4>
			</div>
			<p>
				Governement of India issues the following visas:
			</p>
			<ul>
				<c:forEach var="v" items="${visaList}">
					<li>${v.category} Visa</li>
				</c:forEach>
			</ul>
		</div>
		<!--End visa categories  -->


		<!--Begin visa processing time-->
		<div class="right_area" id="visa_processing_time"
			style="display: none">
			<div class="right_bar_inner">
				<h4>Visa Processing Time</h4>
			</div>
			<p>Upon receipt of the Visa Application through Indian Visa
				Application Center or directly, the Indian Mission/ Post requires a
				minimum of three working days to process the case and issue a visa
				depending upon the nationality and excluding special cases.</p>
		</div>
		<!--End visa processing time  -->


		<!--Begin photo requirements-->
		<div class="right_area" id="visa_photo_requirements"
			style="display: none">
			<div class="right_bar_inner">
				<h4>Photo Requirements</h4>
			</div>
			<p>
				Online India Visa Application allows the Applicant to upload a
				digital photograph of self to complete the regular visa application.
				<br> The digital photograph to be uploaded along with the Visa
				application should meet the following requirements:
			</p>
			<ul class="tvoa_instructions">
				<li>Format – JPEG</li>
				<li>Size
					<ul>
						<li>Minimum 10 KB</li>
						<li>Maximum 300 KB</li>
					</ul>
				</li>
				<li>The height and width of the Photo must be equal.</li>
				<li>Photo should present Full face, front view, eyes open.</li>
				<li>Center head within frame and present full head from top of
					hair to bottom of chin.</li>
				<li>Background should be plain light colored or white
					background.</li>
				<li>No shadows on the face or on the background.</li>
				<li>Without borders.</li>
				<li>Make sure that photo presents full head from top of hair to
					bottom of chin. Head should measure 1 inch to 1-3/8 inches (25mm to
					35mm). Make sure eye height is between 1-1/8 inches to 1-3.</li>
			</ul>

		</div>
		<!--End photo requirements  -->

		<!--Begin fee for indian visa-->
		<div class="right_area" id="fees_indian_visa" style="display: none">
			<div class="right_bar_inner">
				<h4>Fee for Indian Visa</h4>
			</div>
			<p>The visa fee depends upon the type of applied for and duration
				of visa.At the end of the process the basic fee shall be displayed.
				However, this fee shall be indicative only and final fee shall be
				charged while submitting the application at the respective counters
				Fee once received are non refundable even if the visa application is
				withdrawn, the visa is not granted, or if visa issued is of shorter
				duration of period than applied for or otherwise issued or returned
				at a time or on terms and conditions that may vary from those sought
				by the applicant.</p>
		</div>
		<!--End fee for indian visa  -->

		<!--Begin fee for indian visa-->
		<div class="right_area" id="visa_provision" style="display: none">
			<div class="right_bar_inner">
				<h4>Visa Provision</h4>
			</div>
			<table class="right_area_table" style="border: none">
				<thead>
					<tr>
						<td>Sl. No.</td>
						<td>Type of Visa</td>
						<td>Period for which granted</td>
						<td>Visa Fee(GBP)</td>
					</tr>
				</thead>
				<tbody>
					<c:set var="counter" value="1" />
					<c:forEach var="v" items="${visaList}">
						<c:forEach var="type" items="${v.types}">					
							<tr>
								<td>${counter}</td>
								<td>${type.category}</td>
								<td>${type.validity}</td>
								<td>${type.fees}</td>
							</tr>
							<c:set var="counter" value="${counter+1}" />
						</c:forEach>
					</c:forEach>
				</tbody>
			</table>
			<br> <br>
			<ul class="tvoa_instructions">
				<li>If visa is for more than 180 days, registration is
					compulsory within 14 days’ of arrival in India.</li>

			</ul>
		</div>
		<!--End of visa provision  -->

		<!--Begin technical info-->
		<div class="right_area" id="technical_info" style="display: none">
			<div class="right_bar_inner">
				<h4>Technical Information</h4>
			</div>
			<p>
				<span> Important Technical Information for Regular Visa
					application</span>
			</p>
			<ul class="tvoa_instructions">
				<li>This site is best viewed in Mozilla Firefox,Google
					Chrome,Internet Explorer (Windows) version 9.0 and above.</li>
				<li>The applicant must also have Adobe Acrobat Reader version
					7.0 or higher installed on your PC in order to download and print
					the completed application form.</li>
				<li>The applicant should use either an Ink-Jet or Laser printer
					to print the completed Visa Application forms once submitted
					online.</li>
				<li>Once the form is filled and submitted, it is requested to
					submit the signed physical copy of online application form along
					with the supporting documents and the passport to the concerned
					Indian Mission on the scheduled appointment date.</li>

			</ul>
		</div>
		<!--End technical info -->


		<!--Begin instructions-->
		<div class="right_area" id="instructions" style="display: none">
			<div class="right_bar_inner">
				<h4>Instructions</h4>
			</div>
			<p>
				<span> A. Online application form:</span>
			</p>
			<ul class="tvoa_instructions">
				<li>This application form is meant for those foreigners who are
					applying for visa from outside India.</li>
				<li>Each online application form is meant for one person only.
					Separate application has to be filed for each applicant.</li>
				<li>Furnish information exactly in the manner asked for in the
					forms, especially the names, address and date of birth.</li>
				<li>Applicants are required to verify the application details
					before submitting the online application. They have an option to
					save the online application form, in case it is not to be
					submitted.</li>
				<li>Once the online application form is submitted by the
					applicant, then further modifications are not allowed. Hence
					applicants are requested to check and validate the details before
					submitting the online application form.</li>
				<li>Applicants are requested to keep the Application Id
					(generated automatically after the submission of online form) for
					further communications.</li>
			</ul>

			<p>
				<span>C. Process for filling up online application form:</span>
			</p>
			<ul class="tvoa_instructions">
				<li>Applicant shall access the Visa Application system online
					through the following link: https://indianvisaonline.gov.in</li>
				<li>Applicant visits the above mentioned web link and selects
					the Indian Mission from where he intends to apply for the Visa from
					the tab “Select Mission”.</li>
				<li>Applicant fills the application on-line as per the forms
					standardized by the Ministry.</li>
				<li>After filling the form and submitting it, the system shall
					automatically generate a Application Id. Applicants are requested
					to keep this Application Id for further communications with the
					concerned Indian Mission.</li>
				<li>System will automatically ask the Applicant for the
					following confirmation: “Select ‘Yes’ if the applicant want
					to seek appointment and make payment online or ‘No’ if the
					applicant just want to print the submitted application form.”</li>
				<li>If the applicant response is “No”, then it is requested
					by the applicant to take the print out of the submitted online
					application form and approach the concerned Indian Mission for
					submission of the online form along with supporting documents.</li>
				<li>If the response from applicant is “yes” then the system
					automatically takes the link to perform the following:
					<ul>
						<li>Selection of Date and Time of appointment at the
							concerned Indian Mission</li>
						<li>Calculation of Visa fee, service charge, VAT etc. as
							applicable according to the Visa type</li>
					</ul>
				</li>
				<li>ePayment using service provider’s payment system</li>
				<li>In case the facility of Appointment Scheduling and
					e-Payment is not available for the concerned Indian mission, then
					applicant has to take the printout of the online application form
					and visit the concerned Indian Mission to submit the same along
					with supporting documents and make the payment.</li>
			</ul>
			<p>* The e-payment facility is not available for all the Indian
				Missions abroad. Wherever the said facility is not available, it is
				requested to kindly submit the application submission fees to either
				the out sourcing agency or to the Mission directly along with the
				supporting documents.</p>

		</div>
		<!--End instructions -->


		<!--start of useful web link info-->
		<div class="right_area" id="useful_weblink" style="display: none">
			<div class="right_bar_inner">
				<h4>Useful Weblink</h4>
			</div>
			<p>
				<span> Important Technical Information for Regular Visa
					application</span>
			</p>
			<br>
			<ul class="tvoa_instructions">
				<li><a target="_blank" href="http://mha.nic.in/">Ministry
						of Home Affairs, Govt. Of India.</a></li>
				<li><a target="_blank" href="http://www.mea.gov.in/">Minister
						of External Affairs, Govt Of India</a></li>
			</ul>
		</div>
		<!--End of useful web link-->

		<div>
</body>
</html>
