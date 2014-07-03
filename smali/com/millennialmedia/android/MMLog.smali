.class public Lcom/millennialmedia/android/MMLog;
.super Ljava/lang/Object;
.source "MMLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMLog$LoggingComponent;,
        Lcom/millennialmedia/android/MMLog$LogHandler;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->addLoggingComponent(Lcom/millennialmedia/android/MMLog$LoggingComponent;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "classTag"
    .parameter "logMessage"

    .prologue
    .line 182
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "classTag"
    .parameter "logMessage"
    .parameter "throwable"

    .prologue
    .line 187
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "classTag"
    .parameter "logMessage"

    .prologue
    .line 215
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "classTag"
    .parameter "logMessage"
    .parameter "throwable"

    .prologue
    .line 220
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->getLogLevel()I

    move-result v0

    return v0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "classTag"
    .parameter "logMessage"

    .prologue
    .line 193
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "classTag"
    .parameter "logMessage"
    .parameter "throwable"

    .prologue
    .line 198
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    return-void
.end method

.method static registerLogHandler(Lcom/millennialmedia/android/MMLog$LogHandler;)V
    .locals 1
    .parameter "logHandler"

    .prologue
    .line 166
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->registerLogHandler(Lcom/millennialmedia/android/MMLog$LogHandler;)V

    .line 167
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 156
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->setLogLevel(I)V

    .line 157
    return-void
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "classTag"
    .parameter "logMessage"

    .prologue
    .line 171
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "classTag"
    .parameter "logMessage"
    .parameter "throwable"

    .prologue
    .line 176
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    return-void
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "classTag"
    .parameter "logMessage"

    .prologue
    .line 204
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "classTag"
    .parameter "logMessage"
    .parameter "throwable"

    .prologue
    .line 209
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    return-void
.end method
