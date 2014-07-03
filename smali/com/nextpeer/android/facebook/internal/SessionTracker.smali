.class public Lcom/nextpeer/android/facebook/internal/SessionTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;,
        Lcom/nextpeer/android/facebook/internal/SessionTracker$CallbackWrapper;
    }
.end annotation


# instance fields
.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

.field private isTracking:Z

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private session:Lcom/nextpeer/android/facebook/Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nextpeer/android/facebook/Session$StatusCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nextpeer/android/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/nextpeer/android/facebook/Session$StatusCallback;Lcom/nextpeer/android/facebook/Session;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/nextpeer/android/facebook/Session$StatusCallback;Lcom/nextpeer/android/facebook/Session;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nextpeer/android/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/nextpeer/android/facebook/Session$StatusCallback;Lcom/nextpeer/android/facebook/Session;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nextpeer/android/facebook/Session$StatusCallback;Lcom/nextpeer/android/facebook/Session;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->isTracking:Z

    new-instance v0, Lcom/nextpeer/android/facebook/internal/SessionTracker$CallbackWrapper;

    invoke-direct {v0, p0, p2}, Lcom/nextpeer/android/facebook/internal/SessionTracker$CallbackWrapper;-><init>(Lcom/nextpeer/android/facebook/internal/SessionTracker;Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    iput-object p3, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;

    new-instance v0, Lcom/nextpeer/android/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nextpeer/android/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;-><init>(Lcom/nextpeer/android/facebook/internal/SessionTracker;Lcom/nextpeer/android/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/internal/SessionTracker;->startTracking()V

    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/nextpeer/android/facebook/internal/SessionTracker;)Lcom/nextpeer/android/facebook/Session$StatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nextpeer/android/facebook/internal/SessionTracker;)Lcom/nextpeer/android/facebook/Session;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;

    return-object v0
.end method

.method private addBroadcastReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public getOpenSession()Lcom/nextpeer/android/facebook/Session;
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/internal/SessionTracker;->getSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSession()Lcom/nextpeer/android/facebook/Session;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;

    goto :goto_0
.end method

.method public isTracking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->isTracking:Z

    return v0
.end method

.method public isTrackingActiveSession()Z
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSession(Lcom/nextpeer/android/facebook/Session;)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->removeCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/internal/SessionTracker;->addBroadcastReceiver()V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/internal/SessionTracker;->getSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/internal/SessionTracker;->getSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->addCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->removeCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_1
    iput-object p1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;

    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->addCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->removeCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    goto :goto_1
.end method

.method public startTracking()V
    .locals 2

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->isTracking:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->session:Lcom/nextpeer/android/facebook/Session;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/internal/SessionTracker;->addBroadcastReceiver()V

    :cond_1
    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/internal/SessionTracker;->getSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/internal/SessionTracker;->getSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->addCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->isTracking:Z

    goto :goto_0
.end method

.method public stopTracking()V
    .locals 2

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->isTracking:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/internal/SessionTracker;->getSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->removeCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker;->isTracking:Z

    goto :goto_0
.end method
