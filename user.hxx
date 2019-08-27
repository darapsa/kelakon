#ifndef USER_HXX
#define USER_HXX

#include <QObject>

struct rt_user;

class User : public QObject
{
	Q_OBJECT
	Q_PROPERTY(QString name READ name)
	Q_PROPERTY(QString emailAddress READ emailAddress WRITE setEmailAddress NOTIFY emailAddressChanged)
	Q_PROPERTY(QString organization READ organization WRITE setOrganization NOTIFY organizationChanged)
	Q_PROPERTY(QString realName READ realName WRITE setRealName NOTIFY realNameChanged)
	Q_PROPERTY(QString nickName READ nickName WRITE setNickName NOTIFY nickNameChanged)
	Q_PROPERTY(QString lang READ lang WRITE setLang NOTIFY langChanged)
	Q_PROPERTY(QString homePhone READ homePhone WRITE setHomePhone NOTIFY homePhoneChanged)
	Q_PROPERTY(QString workPhone READ workPhone WRITE setWorkPhone NOTIFY workPhoneChanged)
	Q_PROPERTY(QString mobilePhone READ mobilePhone WRITE setMobilePhone NOTIFY mobilePhoneChanged)
	Q_PROPERTY(QString pagerPhone READ pagerPhone WRITE setPagerPhone NOTIFY pagerPhoneChanged)
	Q_PROPERTY(QString address1 READ address1 WRITE setAddress1 NOTIFY address1Changed)
	Q_PROPERTY(QString address2 READ address2 WRITE setAddress2 NOTIFY address2Changed)
	Q_PROPERTY(QString city READ city WRITE setCity NOTIFY cityChanged)
	Q_PROPERTY(QString state READ state WRITE setState NOTIFY stateChanged)
	Q_PROPERTY(QString zip READ zip WRITE setZip NOTIFY zipChanged)
	Q_PROPERTY(QString country READ country WRITE setCountry NOTIFY countryChanged)
	Q_PROPERTY(QString timeZone READ timeZone WRITE setTimeZone NOTIFY timeZoneChanged)
	Q_PROPERTY(bool isLoggedIn READ isLoggedIn WRITE setLoggedIn NOTIFY loggedInChanged)

	public:
		explicit User(bool isLoggedIn = false, QObject* parent = nullptr) :
			QObject{parent},
			m_isLoggedIn{isLoggedIn}
		{}
		~User() {}

		Q_INVOKABLE void update(rt_user* user);

		QString const& name() const { return m_name; }
		QString const& emailAddress() const { return m_emailAddress; }
		QString const& organization() const { return m_organization; }
		QString const& realName() const { return m_realName; }
		QString const& nickName() const { return m_nickName; }
		QString const& lang() const { return m_lang; }
		QString const& homePhone() const { return m_homePhone; }
		QString const& workPhone() const { return m_workPhone; }
		QString const& mobilePhone() const { return m_mobilePhone; }
		QString const& pagerPhone() const { return m_pagerPhone; }
		QString const& address1() const { return m_address1; }
		QString const& address2() const { return m_address2; }
		QString const& city() const { return m_city; }
		QString const& state() const { return m_state; }
		QString const& zip() const { return m_zip; }
		QString const& country() const { return m_country; }
		QString const& timeZone() const { return m_timeZone; }
		bool isLoggedIn() const { return m_isLoggedIn; }

		void setName(QString const& name);
		void setEmailAddress(QString const& emailAddress);
		void setOrganization(QString const& organization);
		void setRealName(QString const& realName);
		void setNickName(QString const& nickName);
		void setLang(QString const& lang);
		void setHomePhone(QString const& homePhone);
		void setWorkPhone(QString const& workPhone);
		void setMobilePhone(QString const& mobilePhone);
		void setPagerPhone(QString const& pagerPhone);
		void setAddress1(QString const& address1);
		void setAddress2(QString const& address2);
		void setCity(QString const& city);
		void setState(QString const& state);
		void setZip(QString const& zip);
		void setCountry(QString const& country);
		void setTimeZone(QString const& timeZone);
		void setLoggedIn(bool isLoggedIn);

	signals:
		void nameChanged();
		void emailAddressChanged();
		void organizationChanged();
		void realNameChanged();
		void nickNameChanged();
		void langChanged();
		void homePhoneChanged();
		void workPhoneChanged();
		void mobilePhoneChanged();
		void pagerPhoneChanged();
		void address1Changed();
		void address2Changed();
		void cityChanged();
		void stateChanged();
		void zipChanged();
		void countryChanged();
		void timeZoneChanged();
		void loggedInChanged();

	private:
		QString m_name;
		QString m_emailAddress;
		QString m_organization;
		QString m_realName;
		QString m_nickName;
		QString m_lang;
		QString m_homePhone;
		QString m_workPhone;
		QString m_mobilePhone;
		QString m_pagerPhone;
		QString m_address1;
		QString m_address2;
		QString m_city;
		QString m_state;
		QString m_zip;
		QString m_country;
		QString m_timeZone;
		bool m_isLoggedIn;
};

#endif // USER_HXX
