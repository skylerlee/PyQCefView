class QCefConfig {

%TypeHeaderCode
#include "QCefConfig.h"
%End

public:
    enum LogLevel {
        LOGSEVERITY_DEFAULT,
        LOGSEVERITY_VERBOSE,
        LOGSEVERITY_DEBUG,
        LOGSEVERITY_INFO,
        LOGSEVERITY_WARNING,
        LOGSEVERITY_ERROR,
        LOGSEVERITY_FATAL,
        LOGSEVERITY_DISABLE
    };

    QCefConfig();
    QCefConfig(const QCefConfig& other);
    ~QCefConfig();
    void addCommandLineSwitch(const QString& smitch);
    void addCommandLineSwitchWithValue(const QString& smitch, const QString& v);
    void setWindowlessRenderingEnabled(const bool enabled);
    const QVariant windowlessRenderingEnabled() const;
    void setSandboxDisabled(const bool disabled);
    const QVariant sandboxDisabled() const;
    void setCommandLinePassthroughDisabled(const bool disabled);
    const QVariant commandLinePassthroughDisabled() const;
    void setBrowserSubProcessPath(const QString& path);
    const QString browserSubProcessPath() const;
    void setResourceDirectoryPath(const QString& path);
    const QString resourceDirectoryPath() const;
    void setLocalesDirectoryPath(const QString& path);
    const QString localesDirectoryPath() const;
    void setLogLevel(const LogLevel lvl);
    const QCefConfig::LogLevel logLevel() const;
    void setLocale(const QString& locale);
    const QString locale() const;
    void setUserAgent(const QString& agent);
    const QString userAgent() const;
    void setCachePath(const QString& path);
    const QString cachePath() const;
    const QString rootCachePath() const;
    void setRootCachePath(const QString& path);
    void setBridgeObjectName(const QString& name);
    const QString bridgeObjectName() const;
    void setBuiltinSchemeName(const QString& name);
    const QString builtinSchemeName() const;
    void setBackgroundColor(const QColor& color);
    const QVariant backgroundColor() const;
    void setAcceptLanguageList(const QString& languages);
    const QString acceptLanguageList() const;
    void setPersistSessionCookies(bool enabled);
    const QVariant persistSessionCookies() const;
    void setPersistUserPreferences(bool enabled);
    const QVariant persistUserPreferences() const;
    void setRemoteDebuggingPort(short port);
    const QVariant remoteDebuggingPort() const;
};
