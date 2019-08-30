#include "rtuser.h"
#include "user.hxx"

void User::update(rt_user* user)
{
	if (m_isLoggedIn) {
		setName(QString{user->name});
		setEmailAddress(QString{user->emailaddress});
		setOrganization(QString{user->organization});
		setRealName(QString{user->realname});
		setNickName(QString{user->nickname});
		setLang(QString{user->lang});
		setHomePhone(QString{user->homephone});
		setWorkPhone(QString{user->workphone});
		setMobilePhone(QString{user->mobilephone});
		setPagerPhone(QString{user->pagerphone});
		setAddress1(QString{user->address1});
		setAddress2(QString{user->address2});
		setCity(QString{user->city});
		setState(QString{user->state});
		setZip(QString{user->zip});
		setCountry(QString{user->country});
		setTimeZone(QString{user->timezone});
	} else {
		setName("");
		setEmailAddress("");
		setOrganization("");
		setRealName("");
		setNickName("");
		setLang("");
		setHomePhone("");
		setWorkPhone("");
		setMobilePhone("");
		setPagerPhone("");
		setAddress1("");
		setAddress2("");
		setCity("");
		setState("");
		setZip("");
		setCountry("");
		setTimeZone("");
	}
}

void User::setName(QString const& name)
{
	if (m_name != name) {
		m_name = name;
		emit nameChanged();
	}
}

void User::setEmailAddress(QString const& emailAddress)
{
	if (m_emailAddress != emailAddress) {
		m_emailAddress = emailAddress;
		emit emailAddressChanged();
	}
}

void User::setOrganization(QString const& organization)
{
	if (m_organization != organization) {
		m_organization = organization;
		emit organizationChanged();
	}
}

void User::setRealName(QString const& realName)
{
	if (m_realName != realName) {
		m_realName = realName;
		emit realNameChanged();
	}
}

void User::setNickName(QString const& nickName)
{
	if (m_nickName != nickName) {
		m_nickName = nickName;
		emit nickNameChanged();
	}
}

void User::setLang(QString const& lang)
{
	if (m_lang != lang) {
		m_lang = lang;
		emit langChanged();
	}
}

void User::setHomePhone(QString const& homePhone)
{
	if (m_homePhone != homePhone) {
		m_homePhone = homePhone;
		emit homePhoneChanged();
	}
}

void User::setWorkPhone(QString const& workPhone)
{
	if (m_workPhone != workPhone) {
		m_workPhone = workPhone;
		emit workPhoneChanged();
	}
}

void User::setMobilePhone(QString const& mobilePhone)
{
	if (m_mobilePhone != mobilePhone) {
		m_mobilePhone = mobilePhone;
		emit mobilePhoneChanged();
	}
}

void User::setPagerPhone(QString const& pagerPhone)
{
	if (m_pagerPhone != pagerPhone) {
		m_pagerPhone = pagerPhone;
		emit pagerPhoneChanged();
	}
}

void User::setAddress1(QString const& address1)
{
	if (m_address1 != address1) {
		m_address1 = address1;
		emit address1Changed();
	}
}

void User::setAddress2(QString const& address2)
{
	if (m_address2 != address2) {
		m_address2 = address2;
		emit address2Changed();
	}
}

void User::setCity(QString const& city)
{
	if (m_city != city) {
		m_city = city;
		emit cityChanged();
	}
}

void User::setState(QString const& state)
{
	if (m_state != state) {
		m_state = state;
		emit stateChanged();
	}
}

void User::setZip(QString const& zip)
{
	if (m_zip != zip) {
		m_zip = zip;
		emit zipChanged();
	}
}

void User::setCountry(QString const& country)
{
	if (m_country != country) {
		m_country = country;
		emit countryChanged();
	}
}

void User::setTimeZone(QString const& timeZone)
{
	if (m_timeZone != timeZone) {
		m_timeZone = timeZone;
		emit timeZoneChanged();
	}
}

void User::setLoggedIn(bool isLoggedIn)
{
	if (m_isLoggedIn != isLoggedIn) {
		m_isLoggedIn = isLoggedIn;
		emit loggedInChanged();
	}
}
