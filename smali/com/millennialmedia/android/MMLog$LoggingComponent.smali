.class Lcom/millennialmedia/android/MMLog$LoggingComponent;
.super Ljava/lang/Object;
.source "MMLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoggingComponent"
.end annotation


# static fields
.field private static final TAG_STARTER:Ljava/lang/String; = "MMSDK-"

.field private static logLevel:I


# instance fields
.field private registeredLogHandler:Lcom/millennialmedia/android/MMLog$LogHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x4

    sput v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->logLevel:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callLogHandler(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->registeredLogHandler:Lcom/millennialmedia/android/MMLog$LogHandler;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->registeredLogHandler:Lcom/millennialmedia/android/MMLog$LogHandler;

    invoke-interface {v0, p1}, Lcom/millennialmedia/android/MMLog$LogHandler;->handleLog(Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method

.method private dInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->callLogHandler(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private eInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->callLogHandler(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private iInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->callLogHandler(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private vInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->callLogHandler(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private wInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->callLogHandler(Ljava/lang/String;)V

    .line 117
    return-void
.end method


# virtual methods
.method d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "classTag"
    .parameter "logMessage"

    .prologue
    .line 58
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->dInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "classTag"
    .parameter "logMessage"
    .parameter "throwable"

    .prologue
    .line 65
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->dInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "classTag"
    .parameter "logMessage"

    .prologue
    .line 121
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->eInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "classTag"
    .parameter "logMessage"
    .parameter "throwable"

    .prologue
    .line 128
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->eInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->logLevel:I

    return v0
.end method

.method i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "classTag"
    .parameter "logMessage"

    .prologue
    .line 79
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->iInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "classTag"
    .parameter "logMessage"
    .parameter "throwable"

    .prologue
    .line 86
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->iInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method registerLogHandler(Lcom/millennialmedia/android/MMLog$LogHandler;)V
    .locals 0
    .parameter "logHandler"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->registeredLogHandler:Lcom/millennialmedia/android/MMLog$LogHandler;

    .line 143
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 27
    sput p1, Lcom/millennialmedia/android/MMLog$LoggingComponent;->logLevel:I

    .line 28
    return-void
.end method

.method v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "classTag"
    .parameter "logMessage"

    .prologue
    .line 37
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->vInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "classTag"
    .parameter "logMessage"
    .parameter "throwable"

    .prologue
    .line 44
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->vInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "classTag"
    .parameter "logMessage"

    .prologue
    .line 100
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->wInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "classTag"
    .parameter "logMessage"
    .parameter "throwable"

    .prologue
    .line 107
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->wInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method
