.class Lcom/mdotm/android/view/InterstitialImageView$4$1;
.super Ljava/lang/Object;
.source "InterstitialImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/InterstitialImageView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mdotm/android/view/InterstitialImageView$4;

.field private final synthetic val$clickedUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/InterstitialImageView$4;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/InterstitialImageView$4$1;->this$1:Lcom/mdotm/android/view/InterstitialImageView$4;

    iput-object p2, p0, Lcom/mdotm/android/view/InterstitialImageView$4$1;->val$clickedUrl:Ljava/lang/String;

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$4$1;->this$1:Lcom/mdotm/android/view/InterstitialImageView$4;

    #getter for: Lcom/mdotm/android/view/InterstitialImageView$4;->this$0:Lcom/mdotm/android/view/InterstitialImageView;
    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView$4;->access$0(Lcom/mdotm/android/view/InterstitialImageView$4;)Lcom/mdotm/android/view/InterstitialImageView;

    move-result-object v0

    #getter for: Lcom/mdotm/android/view/InterstitialImageView;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->access$0(Lcom/mdotm/android/view/InterstitialImageView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView$4$1;->val$clickedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 584
    return-void
.end method
