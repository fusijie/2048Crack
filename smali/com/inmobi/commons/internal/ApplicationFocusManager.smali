.class public Lcom/inmobi/commons/internal/ApplicationFocusManager;
.super Ljava/lang/Object;
.source "ApplicationFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/internal/ApplicationFocusManager$a;,
        Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;
    }
.end annotation


# static fields
.field protected static final MSG_PAUSED:I = 0x3e9

.field protected static final MSG_RESUMED:I = 0x3ea

.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Object;

.field private static c:Landroid/os/HandlerThread;

.field private static d:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method static synthetic a()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static addFocusChangedListener(Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    invoke-static {}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->b()V

    goto :goto_0
.end method

.method private static b()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InMobiAFM"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c:Landroid/os/HandlerThread;

    .line 44
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;

    invoke-direct {v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->b:Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 83
    sget-object v1, Lcom/inmobi/commons/internal/ApplicationFocusManager;->d:Landroid/app/Application;

    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 86
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 121
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;

    .line 122
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;->onFocusChanged(Z)V

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method private static c()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 91
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 92
    sget-object v1, Lcom/inmobi/commons/internal/ApplicationFocusManager;->d:Landroid/app/Application;

    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 95
    :cond_0
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->stop()V

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c:Landroid/os/HandlerThread;

    .line 97
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->d:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->d:Landroid/app/Application;

    .line 39
    :cond_0
    return-void
.end method

.method public static removeFocusChangedListener(Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->c()V

    goto :goto_0
.end method
