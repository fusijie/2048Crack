.class final Lcom/nextpeer/android/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/af$ab;

.field private final synthetic b:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/af$ab;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ah;->a:Lcom/nextpeer/android/af$ab;

    iput-object p2, p0, Lcom/nextpeer/android/ah;->b:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lcom/nextpeer/android/ah;->a:Lcom/nextpeer/android/af$ab;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/ah;->b:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v2, v0}, Lcom/nextpeer/android/af$ab;->a(ZLjava/util/Map;)V

    return-void
.end method
