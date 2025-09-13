class QCefEvent {

%TypeHeaderCode
#include "QCefEvent.h"
%End

public:
    QCefEvent();
    QCefEvent(const QString& name);
    QCefEvent(const QCefEvent& other);
    ~QCefEvent();
    void setEventName(const QString& name);
    const QString eventName() const;
    void setArguments(const QVariantList& args);
    QVariantList& arguments();
};
