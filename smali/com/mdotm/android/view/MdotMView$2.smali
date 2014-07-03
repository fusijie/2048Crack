.class Lcom/mdotm/android/view/MdotMView$2;
.super Ljava/lang/Object;
.source "MdotMView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMView;->finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMView;

.field private final synthetic val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMView;Lcom/mdotm/android/model/MdotMAdResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView$2;->this$0:Lcom/mdotm/android/view/MdotMView;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMView$2;->val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$2;->this$0:Lcom/mdotm/android/view/MdotMView;

    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMView;->removeAllViews()V

    .line 204
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$2;->this$0:Lcom/mdotm/android/view/MdotMView;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMView$2;->val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1, v2}, Lcom/mdotm/android/view/MdotMView;->createBannerView(Lcom/mdotm/android/model/MdotMAdResponse;)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 206
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$2;->this$0:Lcom/mdotm/android/view/MdotMView;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/view/MdotMView;->addView(Landroid/view/View;)V

    .line 207
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$2;->this$0:Lcom/mdotm/android/view/MdotMView;

    #getter for: Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMView;->access$3(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/listener/MdotMAdEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$2;->this$0:Lcom/mdotm/android/view/MdotMView;

    #getter for: Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMView;->access$3(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/listener/MdotMAdEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onReceiveBannerAd()V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$2;->this$0:Lcom/mdotm/android/view/MdotMView;

    #getter for: Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMView;->access$3(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/listener/MdotMAdEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$2;->this$0:Lcom/mdotm/android/view/MdotMView;

    #getter for: Lcom/mdotm/android/view/MdotMView;->mAdEventListener:Lcom/mdotm/android/listener/MdotMAdEventListener;
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMView;->access$3(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/listener/MdotMAdEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onFailedToReceiveBannerAd()V

    goto :goto_0
.end method
