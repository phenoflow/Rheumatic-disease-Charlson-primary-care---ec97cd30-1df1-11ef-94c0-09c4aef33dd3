cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  rheumatic-disease-charlson-primary-care-polyarthritis---primary:
    run: rheumatic-disease-charlson-primary-care-polyarthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  myopathy-rheumatic-disease-charlson-primary-care---primary:
    run: myopathy-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-polyarthritis---primary/output
  still-rheumatic-disease-charlson-primary-care---primary:
    run: still-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: myopathy-rheumatic-disease-charlson-primary-care---primary/output
  rheumatic-disease-charlson-primary-care-dermatopolymyositis---primary:
    run: rheumatic-disease-charlson-primary-care-dermatopolymyositis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: still-rheumatic-disease-charlson-primary-care---primary/output
  rheumatic-disease-charlson-primary-care-rheumatism---primary:
    run: rheumatic-disease-charlson-primary-care-rheumatism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-dermatopolymyositis---primary/output
  rheumatic-disease-charlson-primary-care-acrosclerosis---primary:
    run: rheumatic-disease-charlson-primary-care-acrosclerosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-rheumatism---primary/output
  rheumatic-disease-charlson-primary-care-polymyositis---primary:
    run: rheumatic-disease-charlson-primary-care-polymyositis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-acrosclerosis---primary/output
  rheumatic-disease-charlson-primary-care-spine---primary:
    run: rheumatic-disease-charlson-primary-care-spine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-polymyositis---primary/output
  seronegative-rheumatic-disease-charlson-primary-care---primary:
    run: seronegative-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-spine---primary/output
  rheumatic-disease-charlson-primary-care-finger---primary:
    run: rheumatic-disease-charlson-primary-care-finger---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: seronegative-rheumatic-disease-charlson-primary-care---primary/output
  rheumatic-disease-charlson-primary-care-sicca---primary:
    run: rheumatic-disease-charlson-primary-care-sicca---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-finger---primary/output
  rheumatic-disease-charlson-primary-care-erythematosus---primary:
    run: rheumatic-disease-charlson-primary-care-erythematosus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-sicca---primary/output
  rheumatic-disease-charlson-primary-care-polymyalgia---primary:
    run: rheumatic-disease-charlson-primary-care-polymyalgia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-erythematosus---primary/output
  rheumatic-disease-charlson-primary-care-scleroderma---primary:
    run: rheumatic-disease-charlson-primary-care-scleroderma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-polymyalgia---primary/output
  rheumatoid-rheumatic-disease-charlson-primary-care---primary:
    run: rheumatoid-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-scleroderma---primary/output
  chronic-rheumatic-disease-charlson-primary-care---primary:
    run: chronic-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: rheumatoid-rheumatic-disease-charlson-primary-care---primary/output
  rheumatic-disease-charlson-primary-care-quality---primary:
    run: rheumatic-disease-charlson-primary-care-quality---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: chronic-rheumatic-disease-charlson-primary-care---primary/output
  nonarticular-rheumatic-disease-charlson-primary-care---primary:
    run: nonarticular-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-quality---primary/output
  rheumatic-disease-charlson-primary-care-disseminated---primary:
    run: rheumatic-disease-charlson-primary-care-disseminated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: nonarticular-rheumatic-disease-charlson-primary-care---primary/output
  rheumatic-disease-charlson-primary-care-shoulder---primary:
    run: rheumatic-disease-charlson-primary-care-shoulder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-disseminated---primary/output
  polyneuropathy-rheumatic-disease-charlson-primary-care---primary:
    run: polyneuropathy-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-shoulder---primary/output
  rheumatic-disease-charlson-primary-care-felty---primary:
    run: rheumatic-disease-charlson-primary-care-felty---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: polyneuropathy-rheumatic-disease-charlson-primary-care---primary/output
  rheumatic-disease-charlson-primary-care-carditis---primary:
    run: rheumatic-disease-charlson-primary-care-carditis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-felty---primary/output
  rheumatic-disease-charlson-primary-care-keratoconjunctivitis---primary:
    run: rheumatic-disease-charlson-primary-care-keratoconjunctivitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-carditis---primary/output
  rheumatic-disease-charlson-primary-care-fibrositis---primary:
    run: rheumatic-disease-charlson-primary-care-fibrositis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-keratoconjunctivitis---primary/output
  acute-rheumatic-disease-charlson-primary-care---primary:
    run: acute-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-fibrositis---primary/output
  rheumatic-disease-charlson-primary-care-marinescosjogren---primary:
    run: rheumatic-disease-charlson-primary-care-marinescosjogren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: acute-rheumatic-disease-charlson-primary-care---primary/output
  rheumatic-disease-charlson-primary-care-nodule---primary:
    run: rheumatic-disease-charlson-primary-care-nodule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-marinescosjogren---primary/output
  spondylopathy-rheumatic-disease-charlson-primary-care---primary:
    run: spondylopathy-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-nodule---primary/output
  rheumatic-disease-charlson-primary-care---primary:
    run: rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: spondylopathy-rheumatic-disease-charlson-primary-care---primary/output
  rheumatic-disease-charlson-primary-care-diffuse---primary:
    run: rheumatic-disease-charlson-primary-care-diffuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care---primary/output
  rheumatic-disease-charlson-primary-care-circumscribed---primary:
    run: rheumatic-disease-charlson-primary-care-circumscribed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-diffuse---primary/output
  rheumatic-disease-charlson-primary-care-index---primary:
    run: rheumatic-disease-charlson-primary-care-index---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-circumscribed---primary/output
  arthropathy-rheumatic-disease-charlson-primary-care---primary:
    run: arthropathy-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-index---primary/output
  rheumatic-disease-charlson-primary-care-sjogrens---primary:
    run: rheumatic-disease-charlson-primary-care-sjogrens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: arthropathy-rheumatic-disease-charlson-primary-care---primary/output
  rheumatic-disease-charlson-primary-care-jaccoud's---primary:
    run: rheumatic-disease-charlson-primary-care-jaccoud's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-sjogrens---primary/output
  rheumatic-disease-charlson-primary-care-libmansacks---primary:
    run: rheumatic-disease-charlson-primary-care-libmansacks---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-jaccoud's---primary/output
  pauciarticular-rheumatic-disease-charlson-primary-care---primary:
    run: pauciarticular-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-libmansacks---primary/output
  rheumatic-disease-charlson-primary-care-specified---primary:
    run: rheumatic-disease-charlson-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: pauciarticular-rheumatic-disease-charlson-primary-care---primary/output
  negative-rheumatic-disease-charlson-primary-care---primary:
    run: negative-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-specified---primary/output
  rheumatic-disease-charlson-primary-care-dermatomyositis---primary:
    run: rheumatic-disease-charlson-primary-care-dermatomyositis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: negative-rheumatic-disease-charlson-primary-care---primary/output
  rheumatic-disease-charlson-primary-care-letter---primary:
    run: rheumatic-disease-charlson-primary-care-letter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-dermatomyositis---primary/output
  rheumatic-disease-charlson-primary-care-spondylitis---primary:
    run: rheumatic-disease-charlson-primary-care-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-letter---primary/output
  rheumatic-disease-charlson-primary-care-measure---primary:
    run: rheumatic-disease-charlson-primary-care-measure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-spondylitis---primary/output
  rheumatic-disease-charlson-primary-care-organ---primary:
    run: rheumatic-disease-charlson-primary-care-organ---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-measure---primary/output
  visceral-rheumatic-disease-charlson-primary-care---primary:
    run: visceral-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-organ---primary/output
  rheumatic-disease-charlson-primary-care-score---primary:
    run: rheumatic-disease-charlson-primary-care-score---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: visceral-rheumatic-disease-charlson-primary-care---primary/output
  rheumatic-disease-charlson-primary-care-forms---primary:
    run: rheumatic-disease-charlson-primary-care-forms---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-score---primary/output
  rheumatic-disease-charlson-primary-care-collagen---primary:
    run: rheumatic-disease-charlson-primary-care-collagen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-forms---primary/output
  rheumatic-disease-charlson-primary-care-crest---primary:
    run: rheumatic-disease-charlson-primary-care-crest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-collagen---primary/output
  muscular-rheumatic-disease-charlson-primary-care---primary:
    run: muscular-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-crest---primary/output
  rheumatic-disease-charlson-primary-care-caplan's---primary:
    run: rheumatic-disease-charlson-primary-care-caplan's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: muscular-rheumatic-disease-charlson-primary-care---primary/output
  renal-rheumatic-disease-charlson-primary-care---primary:
    run: renal-rheumatic-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: rheumatic-disease-charlson-primary-care-caplan's---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: renal-rheumatic-disease-charlson-primary-care---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
