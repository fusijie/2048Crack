.class Lcom/google/android/gms/internal/hx$1;
.super Lcom/google/android/gms/internal/hx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/hx;->revokeAccessAndDisconnect(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Eb:Lcom/google/android/gms/internal/hx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hx;Lcom/google/android/gms/common/api/Api$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hx$1;->Eb:Lcom/google/android/gms/internal/hx;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/hx$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/hs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hx$1;->a(Lcom/google/android/gms/internal/hs;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/hs;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/hs;->l(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method
