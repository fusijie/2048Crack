.class final Lcom/nextpeer/android/ay$aa;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "aa"
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/ay;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ay$aa;->a:Lcom/nextpeer/android/ay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/ay;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/ay$aa;-><init>(Lcom/nextpeer/android/ay;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/ay$aa;->a:Lcom/nextpeer/android/ay;

    invoke-static {v1}, Lcom/nextpeer/android/ay;->f(Lcom/nextpeer/android/ay;)Lcom/nextpeer/android/facebook/Session$StatusCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/ay$aa;->a:Lcom/nextpeer/android/ay;

    invoke-static {v1}, Lcom/nextpeer/android/ay;->f(Lcom/nextpeer/android/ay;)Lcom/nextpeer/android/facebook/Session$StatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->addCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/ay$aa;->a:Lcom/nextpeer/android/ay;

    invoke-static {v1}, Lcom/nextpeer/android/ay;->f(Lcom/nextpeer/android/ay;)Lcom/nextpeer/android/facebook/Session$StatusCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/ay$aa;->a:Lcom/nextpeer/android/ay;

    invoke-static {v1}, Lcom/nextpeer/android/ay;->f(Lcom/nextpeer/android/ay;)Lcom/nextpeer/android/facebook/Session$StatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->removeCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    goto :goto_0
.end method
