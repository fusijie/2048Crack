.class final Lcom/inmobi/commons/internal/ApplicationFocusManager$b;
.super Ljava/lang/Object;
.source "ApplicationFocusManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/internal/ApplicationFocusManager;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;

    invoke-static {}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 61
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    iget-object v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    return-void
.end method
