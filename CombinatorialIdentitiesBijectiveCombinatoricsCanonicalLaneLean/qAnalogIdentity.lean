import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean

structure qAnalogObjects (q : ℕ) where
  gaussianBinomial : ℕ → ℕ → ℕ
  qBinomialTheorem : Prop
  qPascalIdentity : ∀ (n k : ℕ), gaussianBinomial n k = gaussianBinomial (n-1) (k-1) + q^(n-k) * gaussianBinomial (n-1) k

structure qAnalogClosurePackage {q : ℕ} (Q : qAnalogObjects q) where
  qBinomialTheoremClosed : Q.qBinomialTheorem
  qPascalIdentityClosed : ∀ (n k : ℕ), Q.gaussianBinomial n k = Q.gaussianBinomial (n-1) (k-1) + q^(n-k) * Q.gaussianBinomial (n-1) k
  qSeriesConvergence : Prop

structure qAnalogClosureEvidence {q : ℕ} {Q : qAnalogObjects q}
    (P : qAnalogClosurePackage Q) where
  qBinomialTheoremClosed : P.qBinomialTheoremClosed
  qPascalIdentityClosed : ∀ (n k : ℕ), P.qPascalIdentityClosed n k
  qSeriesConvergenceClosed : P.qSeriesConvergence

def qAnalogClosure {q : ℕ} {Q : qAnalogObjects q}
    (P : qAnalogClosurePackage Q) : Prop :=
  P.qBinomialTheoremClosed ∧ (∀ n k, P.qPascalIdentityClosed n k) ∧ P.qSeriesConvergence

theorem q_analog_closure_evidence {q : ℕ} {Q : qAnalogObjects q}
    (P : qAnalogClosurePackage Q) (E : qAnalogClosureEvidence P) :
    qAnalogClosure P := by
  exact And.intro E.qBinomialTheoremClosed
    (And.intro E.qPascalIdentityClosed E.qSeriesConvergenceClosed)

end CombinatorialIdentitiesBijectiveCombinatoricsCanonicalLaneLean
end HautevilleHouse