.class Lcom/inmobi/androidsdk/IMBrowserActivity$d;
.super Ljava/lang/Object;
.source "IMBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMBrowserActivity;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$d;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 345
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 346
    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 347
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$d;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->doHidePlayers()V

    .line 348
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$d;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->reload()V

    .line 354
    :cond_0
    :goto_0
    return v1

    .line 350
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 351
    const v0, -0xff0001

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
