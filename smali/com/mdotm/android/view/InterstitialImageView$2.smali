.class Lcom/mdotm/android/view/InterstitialImageView$2;
.super Ljava/lang/Object;
.source "InterstitialImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/InterstitialImageView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/InterstitialImageView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/InterstitialImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/InterstitialImageView$2;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$2;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    #getter for: Lcom/mdotm/android/view/InterstitialImageView;->isAdClicked:Z
    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->access$4(Lcom/mdotm/android/view/InterstitialImageView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$2;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    const/4 v1, 0x1

    #setter for: Lcom/mdotm/android/view/InterstitialImageView;->isAdClicked:Z
    invoke-static {v0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->access$5(Lcom/mdotm/android/view/InterstitialImageView;Z)V

    .line 210
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$2;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->setClickable(Z)V

    .line 211
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$2;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView$2;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-virtual {v1}, Lcom/mdotm/android/view/InterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/mdotm/android/view/InterstitialImageView;->clicked(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->access$6(Lcom/mdotm/android/view/InterstitialImageView;Landroid/content/Context;)V

    .line 214
    :cond_0
    return-void
.end method
