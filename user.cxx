#include <cstring>
#include "rtuser.h"
#include "user.hxx"

void User::setName(QString const& name)
{
	auto c_name = name.toUtf8().constData();
	if (strcmp(m_user.name, c_name)) {
		strcpy(m_user.name, c_name);
		emit nameChanged();
	}
}

void User::setEmailAddress(QString const& emailAddress)
{
	auto c_emailAddress = emailAddress.toUtf8().constData();
	if (strcmp(m_user.emailaddress, c_emailAddress)) {
		strcpy(m_user.emailaddress, c_emailAddress);
		emit emailAddressChanged();
	}
}

void User::setOrganization(QString const& organization)
{
	auto c_organization = organization.toUtf8().constData();
	if (strcmp(m_user.organization, c_organization)) {
		strcpy(m_user.organization, c_organization);
		emit organizationChanged();
	}
}

void User::setRealName(QString const& realName)
{
	auto c_realName = realName.toUtf8().constData();
	if (strcmp(m_user.realname, c_realName)) {
		strcpy(m_user.realname, c_realName);
		emit realNameChanged();
	}
}

void User::setNickName(QString const& nickName)
{
	auto c_nickName = nickName.toUtf8().constData();
	if (strcmp(m_user.nickname, c_nickName)) {
		strcpy(m_user.nickname, c_nickName);
		emit nickNameChanged();
	}
}

void User::setLang(QString const& lang)
{
	auto c_lang = lang.toUtf8().constData();
	if (strcmp(m_user.lang, c_lang)) {
		strcpy(m_user.lang, c_lang);
		emit langChanged();
	}
}

void User::setHomePhone(QString const& homePhone)
{
	auto c_homePhone = homePhone.toUtf8().constData();
	if (strcmp(m_user.homephone, c_homePhone)) {
		strcpy(m_user.homephone, c_homePhone);
		emit homePhoneChanged();
	}
}

void User::setWorkPhone(QString const& workPhone)
{
	auto c_workPhone = workPhone.toUtf8().constData();
	if (strcmp(m_user.workphone, c_workPhone)) {
		strcpy(m_user.workphone, c_workPhone);
		emit workPhoneChanged();
	}
}

void User::setMobilePhone(QString const& mobilePhone)
{
	auto c_mobilePhone = mobilePhone.toUtf8().constData();
	if (strcmp(m_user.mobilephone, c_mobilePhone)) {
		strcpy(m_user.mobilephone, c_mobilePhone);
		emit mobilePhoneChanged();
	}
}

void User::setPagerPhone(QString const& pagerPhone)
{
	auto c_pagerPhone = pagerPhone.toUtf8().constData();
	if (strcmp(m_user.pagerphone, c_pagerPhone)) {
		strcpy(m_user.pagerphone, c_pagerPhone);
		emit pagerPhoneChanged();
	}
}

void User::setAddress1(QString const& address1)
{
	auto c_address1 = address1.toUtf8().constData();
	if (strcmp(m_user.address1, c_address1)) {
		strcpy(m_user.address1, c_address1);
		emit address1Changed();
	}
}

void User::setAddress2(QString const& address2)
{
	auto c_address2 = address2.toUtf8().constData();
	if (strcmp(m_user.address2, c_address2)) {
		strcpy(m_user.address2, c_address2);
		emit address2Changed();
	}
}

void User::setCity(QString const& city)
{
	auto c_city = city.toUtf8().constData();
	if (strcmp(m_user.city, c_city)) {
		strcpy(m_user.city, c_city);
		emit cityChanged();
	}
}

void User::setState(QString const& state)
{
	auto c_state = state.toUtf8().constData();
	if (strcmp(m_user.state, c_state)) {
		strcpy(m_user.state, c_state);
		emit stateChanged();
	}
}

void User::setZip(QString const& zip)
{
	auto c_zip = zip.toUtf8().constData();
	if (strcmp(m_user.zip, c_zip)) {
		strcpy(m_user.zip, c_zip);
		emit zipChanged();
	}
}

void User::setCountry(QString const& country)
{
	auto c_country = country.toUtf8().constData();
	if (strcmp(m_user.country, c_country)) {
		strcpy(m_user.country, c_country);
		emit countryChanged();
	}
}

void User::setTimeZone(QString const& timeZone)
{
	auto c_timeZone = timeZone.toUtf8().constData();
	if (strcmp(m_user.timezone, c_timeZone)) {
		strcpy(m_user.timezone, c_timeZone);
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
