.class final Lcom/nextpeer/android/ei;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/eh;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/eh;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ei;->a:Lcom/nextpeer/android/eh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "NPA_CURRENT_MATCHES_FILTER_PAST_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ei;->a:Lcom/nextpeer/android/eh;

    invoke-static {v0}, Lcom/nextpeer/android/eh;->a(Lcom/nextpeer/android/eh;)V

    return-void
.end method
