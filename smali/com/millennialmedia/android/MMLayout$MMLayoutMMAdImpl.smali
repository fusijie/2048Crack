.class Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;
.super Lcom/millennialmedia/android/MMAdImpl;
.source "MMLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMLayoutMMAdImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMLayout;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMLayout;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/millennialmedia/android/MMLayout;

    .line 430
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMAdImpl;-><init>(Landroid/content/Context;)V

    .line 431
    new-instance v0, Lcom/millennialmedia/android/MMLayout$LayoutAdProperties;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/millennialmedia/android/MMLayout$LayoutAdProperties;-><init>(Lcom/millennialmedia/android/MMLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->adProperties:Lcom/millennialmedia/android/AdProperties;

    .line 432
    return-void
.end method


# virtual methods
.method public addView(Lcom/millennialmedia/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .parameter "webView"
    .parameter "webLayoutParams"

    .prologue
    .line 455
    const-string v0, "MMLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMLayout adding view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    return-void
.end method

.method bridge synthetic getCallingAd()Lcom/millennialmedia/android/MMAd;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMLayout;

    move-result-object v0

    return-object v0
.end method

.method getCallingAd()Lcom/millennialmedia/android/MMLayout;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/millennialmedia/android/MMLayout;

    return-object v0
.end method

.method getId()I
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->getId()I

    move-result v0

    return v0
.end method

.method public removeView(Lcom/millennialmedia/android/MMWebView;)V
    .locals 1
    .parameter "mmWebView"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMLayout;->removeView(Landroid/view/View;)V

    .line 450
    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMLayout;->setClickable(Z)V

    .line 444
    return-void
.end method
