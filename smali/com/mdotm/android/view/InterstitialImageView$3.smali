.class Lcom/mdotm/android/view/InterstitialImageView$3;
.super Ljava/lang/Thread;
.source "InterstitialImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/InterstitialImageView;->initializeAdView(Lcom/mdotm/android/model/MdotMAdResponse;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/InterstitialImageView;

.field private final synthetic val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/InterstitialImageView;Lcom/mdotm/android/model/MdotMAdResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    iput-object p2, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 278
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/InterstitialImageView$3;)Lcom/mdotm/android/view/InterstitialImageView;
    .locals 1
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    .line 283
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v2}, Lcom/mdotm/android/model/MdotMAdResponse;->getOriginalImageUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 282
    #calls: Lcom/mdotm/android/view/InterstitialImageView;->fetchImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    invoke-static {v1, v2, v3}, Lcom/mdotm/android/view/InterstitialImageView;->access$7(Lcom/mdotm/android/view/InterstitialImageView;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/mdotm/android/view/InterstitialImageView;->imagrBitmap:Landroid/graphics/Bitmap;

    .line 284
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->this$0:Lcom/mdotm/android/view/InterstitialImageView;

    iget-object v0, v0, Lcom/mdotm/android/view/InterstitialImageView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/view/InterstitialImageView$3$1;

    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->val$adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-direct {v1, p0, v2}, Lcom/mdotm/android/view/InterstitialImageView$3$1;-><init>(Lcom/mdotm/android/view/InterstitialImageView$3;Lcom/mdotm/android/model/MdotMAdResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    return-void
.end method
