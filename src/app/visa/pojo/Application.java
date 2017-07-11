package app.visa.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;
import org.springframework.format.annotation.DateTimeFormat;

@Document(collection="applications")
public class Application {
	
	@Id
	private String id;
	@Field
	private VisaDetails visa;
	@Field
	private PersonalDetails personal;
	@Field
	private PassportDetails passport;
	@Field
	private ContactDetails contact;
	@Field
	private List<FamilyDetails> familyMembers;
	@Field
	private String lastVisaAppId;
	@Field
	private List<String> lastVisitedCities;
	@Field
	private OccupationDetails occupation;
	@Field
	private Address resiAddress;
	@Field
	private ReferenceDetails fromCountryReference;
	@Field
	private ReferenceDetails indiaCountryReference;
	@Field
	private List<UploadDocument> documents;
	@Field
	private PaymentDetails payment;
	@Field
	@DateTimeFormat(pattern="dd/MM/yyyy hh:mm:ss")
	private Date date;
	
	public Application() {
		this(null,new VisaDetails(),new PersonalDetails(),new PassportDetails(),new ContactDetails(),
				new ArrayList<>(),"",new ArrayList<>(),new OccupationDetails(),new Address(),new ReferenceDetails(),
				new ReferenceDetails(),new ArrayList<>(),new PaymentDetails(),new Date());
	}
	
	public Application(String appid, VisaDetails visa, PersonalDetails personal, PassportDetails passport,
			ContactDetails contact, List<FamilyDetails> familyMembers, String lastVisaAppId,
			List<String> lastVisitedCities, OccupationDetails occupation, Address resiAddress,
			ReferenceDetails fromCountryReference, ReferenceDetails indiaCountryReference, List<UploadDocument> documents,
			PaymentDetails payment, Date date) {
		this.id = appid;
		this.visa = visa;
		this.personal = personal;
		this.passport = passport;
		this.contact = contact;
		this.familyMembers = familyMembers;
		this.lastVisaAppId = lastVisaAppId;
		this.lastVisitedCities = lastVisitedCities;
		this.occupation = occupation;
		this.resiAddress = resiAddress;
		this.fromCountryReference = fromCountryReference;
		this.indiaCountryReference = indiaCountryReference;
		this.documents = documents;
		this.payment = payment;
		this.date = date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public VisaDetails getVisa() {
		return visa;
	}
	public void setVisa(VisaDetails visa) {
		this.visa = visa;
	}
	public PersonalDetails getPersonal() {
		return personal;
	}
	public void setPersonal(PersonalDetails personal) {
		this.personal = personal;
	}
	public PassportDetails getPassport() {
		return passport;
	}
	public void setPassport(PassportDetails passport) {
		this.passport = passport;
	}
	public ContactDetails getContact() {
		return contact;
	}
	public void setContact(ContactDetails contact) {
		this.contact = contact;
	}
	public List<FamilyDetails> getFamilyMembers() {
		return familyMembers;
	}
	public void setFamilyMembers(List<FamilyDetails> familyMembers) {
		this.familyMembers = familyMembers;
	}
	public String getLastVisaAppId() {
		return lastVisaAppId;
	}
	public void setLastVisaAppId(String lastVisaAppId) {
		this.lastVisaAppId = lastVisaAppId;
	}
	public List<String> getLastVisitedCities() {
		return lastVisitedCities;
	}
	public void setLastVisitedCities(List<String> lastVisitedCities) {
		this.lastVisitedCities = lastVisitedCities;
	}
	public OccupationDetails getOccupation() {
		return occupation;
	}
	public void setOccupation(OccupationDetails occupation) {
		this.occupation = occupation;
	}
	public Address getResiAddress() {
		return resiAddress;
	}
	public void setResiAddress(Address resiAddress) {
		this.resiAddress = resiAddress;
	}
	public ReferenceDetails getFromCountryReference() {
		return fromCountryReference;
	}
	public void setFromCountryReference(ReferenceDetails fromCountryReference) {
		this.fromCountryReference = fromCountryReference;
	}
	public ReferenceDetails getIndiaCountryReference() {
		return indiaCountryReference;
	}
	public void setIndiaCountryReference(ReferenceDetails indiaCountryReference) {
		this.indiaCountryReference = indiaCountryReference;
	}
	public List<UploadDocument> getDocuments() {
		return documents;
	}
	public void setDocuments(List<UploadDocument> documents) {
		this.documents = documents;
	}
	public PaymentDetails getPayment() {
		return payment;
	}
	public void setPayment(PaymentDetails payment) {
		this.payment = payment;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Application [appid=" + id + ", visa=" + visa + ", personal=" + personal + ", passport=" + passport
				+ ", contact=" + contact + ", familyMembers=" + familyMembers + ", lastVisaAppId=" + lastVisaAppId
				+ ", lastVisitedCities=" + lastVisitedCities + ", occupation=" + occupation + ", resiAddress="
				+ resiAddress + ", fromCountryReference=" + fromCountryReference + ", indiaCountryReference="
				+ indiaCountryReference + ", documents=" + documents + ", payment=" + payment + ", date=" + date + "]";
	}
}
