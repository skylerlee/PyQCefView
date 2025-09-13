class QCefConfig {

%TypeHeaderCode
#include "QCefConfig.h"
%End

public:
    QCefConfig();
    QCefConfig(const QCefConfig& other);
    ~QCefConfig();
    void addCommandLineSwitch(const QString& smitch);
    void addCommandLineSwitchWithValue(const QString& smitch, const QString& v);
    void setWindowlessRenderingEnabled(const bool enabled);
    const QVariant windowlessRenderingEnabled() const;
    void setStandaloneMessageLoopEnabled(const bool enabled);
    const QVariant standaloneMessageLoopEnabled() const;
    void setSandboxDisabled(const bool disabled);
    const QVariant sandboxDisabled() const;
    void setCommandLinePassthroughDisabled(const bool disabled);
    const QVariant commandLinePassthroughDisabled() const;
};
