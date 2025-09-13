class QCefQuery {

%TypeHeaderCode
#include "QCefQuery.h"
%End

protected:
    void markAsReplied() const;

public:
    QCefQuery();
    ~QCefQuery();
    const QString request() const;
    const qint64 id() const;
    const QString response() const;
    const bool result() const;
    const int error() const;
    void setResponseResult(bool success, const QString& response, int error = 0) const;
    void reply(bool success, const QString& response, int error = 0) const;
};
