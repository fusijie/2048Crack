.class Lcom/mdotm/android/view/MdotMView$1;
.super Ljava/util/TimerTask;
.source "MdotMView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMView;->scheduleTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView$1;->this$0:Lcom/mdotm/android/view/MdotMView;

    .line 160
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMView$1;)Lcom/mdotm/android/view/MdotMView;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$1;->this$0:Lcom/mdotm/android/view/MdotMView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$1;->this$0:Lcom/mdotm/android/view/MdotMView;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/view/MdotMView$1$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/view/MdotMView$1$1;-><init>(Lcom/mdotm/android/view/MdotMView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method
