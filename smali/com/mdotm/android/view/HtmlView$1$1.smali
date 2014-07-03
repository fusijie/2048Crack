.class Lcom/mdotm/android/view/HtmlView$1$1;
.super Ljava/lang/Object;
.source "HtmlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/view/HtmlView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mdotm/android/view/HtmlView$1;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/HtmlView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/HtmlView$1$1;->this$1:Lcom/mdotm/android/view/HtmlView$1;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$1$1;->this$1:Lcom/mdotm/android/view/HtmlView$1;

    iget-boolean v0, v0, Lcom/mdotm/android/view/HtmlView$1;->timeout:Z

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "timeout loading landing url"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$1$1;->this$1:Lcom/mdotm/android/view/HtmlView$1;

    #getter for: Lcom/mdotm/android/view/HtmlView$1;->this$0:Lcom/mdotm/android/view/HtmlView;
    invoke-static {v0}, Lcom/mdotm/android/view/HtmlView$1;->access$0(Lcom/mdotm/android/view/HtmlView$1;)Lcom/mdotm/android/view/HtmlView;

    move-result-object v0

    #getter for: Lcom/mdotm/android/view/HtmlView;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/mdotm/android/view/HtmlView;->access$0(Lcom/mdotm/android/view/HtmlView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 72
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$1$1;->this$1:Lcom/mdotm/android/view/HtmlView$1;

    #getter for: Lcom/mdotm/android/view/HtmlView$1;->this$0:Lcom/mdotm/android/view/HtmlView;
    invoke-static {v0}, Lcom/mdotm/android/view/HtmlView$1;->access$0(Lcom/mdotm/android/view/HtmlView$1;)Lcom/mdotm/android/view/HtmlView;

    move-result-object v0

    #calls: Lcom/mdotm/android/view/HtmlView;->adNetworkCompleted()V
    invoke-static {v0}, Lcom/mdotm/android/view/HtmlView;->access$1(Lcom/mdotm/android/view/HtmlView;)V

    .line 73
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$1$1;->this$1:Lcom/mdotm/android/view/HtmlView$1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mdotm/android/view/HtmlView$1;->timeout:Z

    .line 75
    :cond_0
    return-void
.end method
