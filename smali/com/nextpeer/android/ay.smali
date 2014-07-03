.class final Lcom/nextpeer/android/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/hc$ab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/ay$aa;,
        Lcom/nextpeer/android/ay$ab;,
        Lcom/nextpeer/android/ay$ac;,
        Lcom/nextpeer/android/ay$ad;
    }
.end annotation


# instance fields
.field private final a:Lcom/nextpeer/android/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nextpeer/android/ar",
            "<",
            "Lcom/nextpeer/android/ay$ab;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/nextpeer/android/facebook/Session$StatusCallback;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/content/BroadcastReceiver;

.field private final e:Landroid/support/v4/content/LocalBroadcastManager;

.field private f:Lcom/nextpeer/android/ay$ad;

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nextpeer/android/ar;

    invoke-direct {v0}, Lcom/nextpeer/android/ar;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/ay;->f:Lcom/nextpeer/android/ay$ad;

    iput-boolean v3, p0, Lcom/nextpeer/android/ay;->g:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "basic_info"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "email"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/ay;->h:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/nextpeer/android/ay;->c:Landroid/content/Context;

    new-instance v0, Lcom/nextpeer/android/ay$aa;

    invoke-direct {v0, p0, v3}, Lcom/nextpeer/android/ay$aa;-><init>(Lcom/nextpeer/android/ay;B)V

    iput-object v0, p0, Lcom/nextpeer/android/ay;->d:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/nextpeer/android/ay;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/ay;->e:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v0, Lcom/nextpeer/android/ay$ac;

    invoke-direct {v0, p0, v3}, Lcom/nextpeer/android/ay$ac;-><init>(Lcom/nextpeer/android/ay;B)V

    iput-object v0, p0, Lcom/nextpeer/android/ay;->b:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/Session;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/Session;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->setActiveSession(Lcom/nextpeer/android/facebook/Session;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->closeAndClearTokenInformation()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/ay;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/ay;->f()V

    return-void
.end method

.method public static final a()Z
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Utility;->isFacebookSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/nextpeer/android/ay;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/ay;->g:Z

    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/ay$ab;

    invoke-interface {v0}, Lcom/nextpeer/android/ay$ab;->f_()V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/nextpeer/android/ay;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/ay;->e()V

    return-void
.end method

.method static synthetic d(Lcom/nextpeer/android/ay;)Lcom/nextpeer/android/ay$ad;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ay;->f:Lcom/nextpeer/android/ay$ad;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/ay$ab;

    invoke-interface {v0}, Lcom/nextpeer/android/ay$ab;->b()V

    move v0, v1

    goto :goto_0
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/ay;->g:Z

    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/ay$ab;

    invoke-interface {v0}, Lcom/nextpeer/android/ay$ab;->c()V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/nextpeer/android/ay;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/ay;->f:Lcom/nextpeer/android/ay$ad;

    return-void
.end method

.method static synthetic f(Lcom/nextpeer/android/ay;)Lcom/nextpeer/android/facebook/Session$StatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ay;->b:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    return-object v0
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/ay;->g:Z

    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/ay$ab;

    invoke-interface {v0}, Lcom/nextpeer/android/ay$ab;->e_()V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ay;->c:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nextpeer/android/ay;->b:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/nextpeer/android/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/nextpeer/android/facebook/TokenCachingStrategy;Lcom/nextpeer/android/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/nextpeer/android/facebook/Session;

    iget-object v1, p0, Lcom/nextpeer/android/ay;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/Session;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->setActiveSession(Lcom/nextpeer/android/facebook/Session;)V

    :cond_2
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;)V
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nextpeer/android/ay;->b:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/ay;->b:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->addCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    :cond_0
    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->getState()Lcom/nextpeer/android/facebook/SessionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/nextpeer/android/facebook/Session$OpenRequest;

    invoke-direct {v1, p1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    iget-object v2, p0, Lcom/nextpeer/android/ay;->b:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/ay;->h:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->openForRead(Lcom/nextpeer/android/facebook/Session$OpenRequest;)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/ay;->e:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/nextpeer/android/ay;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;Lcom/nextpeer/android/ay$ab;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, p2}, Lcom/nextpeer/android/ar;->a(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/nextpeer/android/ay;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "Could not start login, already in process"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/nextpeer/android/ay;->g:Z

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/nextpeer/android/ay;->d()V

    new-instance v1, Lcom/nextpeer/android/facebook/Session$OpenRequest;

    invoke-direct {v1, p1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    iget-object v2, p0, Lcom/nextpeer/android/ay;->b:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/ay;->h:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->openForRead(Lcom/nextpeer/android/facebook/Session$OpenRequest;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/ay;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/nextpeer/android/ay;->b:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-static {v0, p1, v2, v1}, Lcom/nextpeer/android/facebook/Session;->openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session;

    goto :goto_0
.end method

.method public final a(Lcom/nextpeer/android/ay$ab;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/ay;->a:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/ar;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NPFBUserLoginBroker - Failed could not get NPUserCredentials instance to persist the login details"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nextpeer/android/ay;->f()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/nextpeer/android/hc;->l()Lcom/nextpeer/android/hc$aa;

    move-result-object v1

    sget-object v2, Lcom/nextpeer/android/hc$aa;->b:Lcom/nextpeer/android/hc$aa;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hc;->a(Lcom/nextpeer/android/hc$ab;)V

    invoke-virtual {v0, p1, p2}, Lcom/nextpeer/android/hc;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "NPFBUserLoginBroker - success restored the facebook user"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nextpeer/android/ay;->e()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/ay;->g:Z

    return v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/ay;->e:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/nextpeer/android/ay;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/nextpeer/android/ay;->b:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/ay;->b:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->removeCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    :cond_0
    return-void
.end method

.method public final onRegisterUserFailed()V
    .locals 1

    const-string v0, "NPFBUserLoginBroker - failed registering the facebook user"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nextpeer/android/ay;->f()V

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hc;->b(Lcom/nextpeer/android/hc$ab;)V

    :cond_0
    return-void
.end method

.method public final onRegisterUserSuccessfully(Ljava/lang/Boolean;)V
    .locals 3

    const-string v0, "NPFBUserLoginBroker - success registering the facebook user"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hc;->b(Lcom/nextpeer/android/hc$ab;)V

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Coult not refetch the user model because the user details model is null"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nextpeer/android/ay;->f()V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/nextpeer/android/ay$ad;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nextpeer/android/ay$ad;-><init>(Lcom/nextpeer/android/ay;B)V

    iput-object v1, p0, Lcom/nextpeer/android/ay;->f:Lcom/nextpeer/android/ay$ad;

    iget-object v1, p0, Lcom/nextpeer/android/ay;->f:Lcom/nextpeer/android/ay$ad;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hh;->a(Lcom/nextpeer/android/hn;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hh;->a(Z)V

    goto :goto_0
.end method
