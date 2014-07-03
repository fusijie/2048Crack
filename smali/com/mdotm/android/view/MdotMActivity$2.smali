.class Lcom/mdotm/android/view/MdotMActivity$2;
.super Ljava/lang/Object;
.source "MdotMActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity;->getVideoLayout()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMActivity;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$2;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 346
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 347
    .local v0, action:I
    if-ne v0, v2, :cond_0

    .line 348
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity$2;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    #getter for: Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z
    invoke-static {v1}, Lcom/mdotm/android/view/MdotMActivity;->access$2(Lcom/mdotm/android/view/MdotMActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity$2;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    #setter for: Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z
    invoke-static {v1, v2}, Lcom/mdotm/android/view/MdotMActivity;->access$3(Lcom/mdotm/android/view/MdotMActivity;Z)V

    .line 350
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity$2;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMActivity;->clicked()V

    .line 353
    :cond_0
    return v2
.end method
