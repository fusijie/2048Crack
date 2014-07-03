.class Lcom/mdotm/android/view/HtmlView$2;
.super Ljava/lang/Thread;
.source "HtmlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/HtmlView;->showActivityIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/HtmlView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/HtmlView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/HtmlView$2;->this$0:Lcom/mdotm/android/view/HtmlView;

    .line 200
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$2;->this$0:Lcom/mdotm/android/view/HtmlView;

    #getter for: Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mdotm/android/view/HtmlView;->access$4(Lcom/mdotm/android/view/HtmlView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$2;->this$0:Lcom/mdotm/android/view/HtmlView;

    #getter for: Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mdotm/android/view/HtmlView;->access$4(Lcom/mdotm/android/view/HtmlView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 206
    iget-object v0, p0, Lcom/mdotm/android/view/HtmlView$2;->this$0:Lcom/mdotm/android/view/HtmlView;

    #getter for: Lcom/mdotm/android/view/HtmlView;->activityIndicator:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/mdotm/android/view/HtmlView;->access$4(Lcom/mdotm/android/view/HtmlView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 208
    :cond_0
    return-void
.end method
