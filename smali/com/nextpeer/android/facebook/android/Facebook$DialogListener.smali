.class public interface abstract Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/android/Facebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DialogListener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onComplete(Landroid/os/Bundle;)V
.end method

.method public abstract onError(Lcom/nextpeer/android/facebook/android/DialogError;)V
.end method

.method public abstract onFacebookError(Lcom/nextpeer/android/facebook/android/FacebookError;)V
.end method
