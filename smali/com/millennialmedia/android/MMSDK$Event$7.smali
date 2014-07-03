.class final Lcom/millennialmedia/android/MMSDK$Event$7;
.super Ljava/lang/Object;
.source "MMSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

.field final synthetic val$error:Lcom/millennialmedia/android/MMException;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iput-object p2, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->val$error:Lcom/millennialmedia/android/MMException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 483
    iget-object v1, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    if-eqz v1, :cond_0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    iget-object v2, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->val$error:Lcom/millennialmedia/android/MMException;

    invoke-interface {v1, v2, v3}, Lcom/millennialmedia/android/RequestListener;->requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, exception:Ljava/lang/Exception;
    const-string v1, "MMSDK"

    const-string v2, "Exception raised in your RequestListener: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
