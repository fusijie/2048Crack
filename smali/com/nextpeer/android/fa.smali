.class final Lcom/nextpeer/android/fa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/ex;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/fa;->a:Lcom/nextpeer/android/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "NPA_INVITE_FB_FRIENDS_FILTER_ALL_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/fa;->a:Lcom/nextpeer/android/ex;

    invoke-static {v0}, Lcom/nextpeer/android/ex;->e(Lcom/nextpeer/android/ex;)V

    return-void
.end method
