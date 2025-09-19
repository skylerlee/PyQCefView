class QCefSetting {

%TypeHeaderCode
#include "QCefSetting.h"
%End

public:
    QCefSetting();
    QCefSetting(const QCefSetting& other);
    ~QCefSetting();
    void setWindowInitialSize(const QSize& size);
    const QSize windowInitialSize() const;
    void setStandardFontFamily(const QString& value);
    const QString standardFontFamily() const;
    void setFixedFontFamily(const QString& value);
    const QString fixedFontFamily() const;
    void setSerifFontFamily(const QString& value);
    const QString serifFontFamily() const;
    void setSansSerifFontFamily(const QString& value);
    const QString sansSerifFontFamily() const;
    void setCursiveFontFamily(const QString& value);
    const QString cursiveFontFamily() const;
    void setFantasyFontFamily(const QString& value);
    const QString fantasyFontFamily() const;
    void setDefaultEncoding(const QString& value);
    const QString defaultEncoding() const;
    void setWindowlessFrameRate(const int value);
    const QVariant windowlessFrameRate() const;
    void setDefaultFontSize(const int value);
    const QVariant defaultFontSize() const;
    void setDefaultFixedFontSize(const int value);
    const QVariant defaultFixedFontSize() const;
    void setMinimumFontSize(const int value);
    const QVariant minimumFontSize() const;
    void setMinimumLogicalFontSize(const int value);
    const QVariant minimumLogicalFontSize() const;
    void setRemoteFonts(const bool value);
    const QVariant remoteFonts() const;
    void setJavascript(const bool value);
    const QVariant javascript() const;
    void setJavascriptCloseWindows(const bool value);
    const QVariant javascriptCloseWindows() const;
    void setJavascriptAccessClipboard(const bool value);
    const QVariant javascriptAccessClipboard() const;
    void setJavascriptDomPaste(const bool value);
    const QVariant javascriptDomPaste() const;
    void setImageLoading(const bool value);
    const QVariant imageLoading() const;
    void setImageShrinkStandaloneToFit(const bool value);
    const QVariant imageShrinkStandaloneToFit() const;
    void setTextAreaResize(const bool value);
    const QVariant textAreaResize() const;
    void setTabToLinks(const bool value);
    const QVariant tabToLinks() const;
    void setLocalStorage(const bool value);
    const QVariant localStorage() const;
    void setDatabases(const bool value);
    const QVariant databases() const;
    void setWebGL(const bool value);
    const QVariant webGL() const;
    void setBackgroundColor(const QColor& value);
    const QVariant backgroundColor() const;
    void setHardwareAcceleration(const bool value);
    const bool hardwareAcceleration() const;
};
