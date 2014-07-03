.class Lcom/nextpeer/android/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/internal/SessionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveSessionBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/internal/SessionTracker;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/facebook/internal/SessionTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;->this$0:Lcom/nextpeer/android/facebook/internal/SessionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/facebook/internal/SessionTracker;Lcom/nextpeer/android/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;-><init>(Lcom/nextpeer/android/facebook/internal/SessionTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;->this$0:Lcom/nextpeer/android/facebook/internal/SessionTracker;

    #getter for: Lcom/nextpeer/android/facebook/internal/SessionTracker;->callback:Lcom/nextpeer/android/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/SessionTracker;->access$0(Lcom/nextpeer/android/facebook/internal/SessionTracker;)Lcom/nextpeer/android/facebook/Session$StatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->addCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    :cond_0
    return-void
.end method
