.class Lcom/inmobi/re/controller/d;
.super Ljava/lang/Object;
.source "JSUtilityController.java"

# interfaces
.implements Lcom/inmobi/re/container/mraidimpl/AudioTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/re/controller/JSUtilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/controller/JSUtilityController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/controller/JSUtilityController;)V
    .locals 0
    .parameter

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/inmobi/re/controller/d;->a:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public audioLevel(D)V
    .locals 1
    .parameter

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/inmobi/re/controller/d;->a:Lcom/inmobi/re/controller/JSUtilityController;

    iget-object v0, v0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->raiseMicEvent(D)V

    .line 1183
    return-void
.end method
