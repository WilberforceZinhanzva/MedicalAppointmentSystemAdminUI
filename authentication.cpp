#include "authentication.h"


Authentication::Authentication()
{

}

Authentication::Authentication(const Authentication &)
{

}

Authentication::~Authentication()
{

}

const QString &Authentication::name() const
{
    return m_name;
}

void Authentication::setName(const QString &newName)
{
    if (m_name == newName)
        return;
    m_name = newName;
    emit nameChanged();
}

const QString &Authentication::token() const
{
    return m_token;
}

void Authentication::setToken(const QString &newToken)
{
    if (m_token == newToken)
        return;
    m_token = newToken;
    emit tokenChanged();
}

Authentication &Authentication::instance()
{
    static Authentication authentication;
    return authentication;
}

bool Authentication::authenticated() const
{
    return m_authenticated;
}

void Authentication::setAuthenticated(bool newAuthenticated)
{
    if (m_authenticated == newAuthenticated)
        return;
    m_authenticated = newAuthenticated;
    emit authenticatedChanged();
}

void Authentication::login(const QString &username, const QString &password)
{

}
